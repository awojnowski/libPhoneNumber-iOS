//
//  M2PhoneMetaDataGenerator.m
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import <libxml/tree.h>
#import <libxml/parser.h>
#import <libxml/HTMLparser.h>
#import <libxml/xpath.h>
#import <libxml/xpathInternals.h>

#import "M2PhoneMetaDataGenerator.h"
#import "NBPhoneMetaData.h"


@implementation M2PhoneMetaDataGenerator


- (id)init
{
    self = [super init];
    
    if (self)
    {
    }
    
    return self;
}


- (NSString *)documentsDirectory
{
	NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
	return [paths objectAtIndex:0];
}


- (NSDictionary*)dictionaryForNode:(xmlNodePtr)currentNode parentResult:(NSMutableDictionary*)parentResult
{
	NSMutableDictionary *resultForNode = [NSMutableDictionary dictionary];
	
	if (currentNode->name)
	{
		NSString *currentNodeContent = [NSString stringWithCString:(const char *)currentNode->name encoding:NSUTF8StringEncoding];
		[resultForNode setObject:currentNodeContent forKey:@"nodeName"];
	}
	
	if (currentNode->content && currentNode->type != XML_DOCUMENT_TYPE_NODE)
	{
		NSString *currentNodeContent = [NSString stringWithCString:(const char *)currentNode->content encoding:NSUTF8StringEncoding];
		
		if ([[resultForNode objectForKey:@"nodeName"] isEqual:@"text"] && parentResult)
		{
			currentNodeContent = [currentNodeContent
                                  stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
			
			NSString *existingContent = [parentResult objectForKey:@"nodeContent"];
			NSString *newContent = nil;
            
			if (existingContent)
			{
				newContent = [existingContent stringByAppendingString:currentNodeContent];
			}
			else
			{
				newContent = currentNodeContent;
			}
            
			[parentResult setObject:newContent forKey:@"nodeContent"];
			return nil;
		}
		
		[resultForNode setObject:currentNodeContent forKey:@"nodeContent"];
	}
	
	xmlAttr *attribute = currentNode->properties;
	if (attribute)
	{
		NSMutableArray *attributeArray = [NSMutableArray array];
		while (attribute)
		{
			NSMutableDictionary *attributeDictionary = [NSMutableDictionary dictionary];
			NSString *attributeName = [NSString stringWithCString:(const char *)attribute->name encoding:NSUTF8StringEncoding];
            
			if (attributeName)
			{
				[attributeDictionary setObject:attributeName forKey:@"attributeName"];
			}
			
			if (attribute->children)
			{
				NSDictionary *childDictionary = [self dictionaryForNode:attribute->children parentResult:attributeDictionary];
				if (childDictionary)
				{
					[attributeDictionary setObject:childDictionary forKey:@"attributeContent"];
				}
			}
			
			if ([attributeDictionary count] > 0)
			{
				[attributeArray addObject:attributeDictionary];
			}
			attribute = attribute->next;
		}
		
		if ([attributeArray count] > 0)
		{
			[resultForNode setObject:attributeArray forKey:@"nodeAttributeArray"];
		}
	}
    
	xmlNodePtr childNode = currentNode->children;
	if (childNode)
	{
		NSMutableArray *childContentArray = [NSMutableArray array];
        
		while (childNode)
		{
			NSDictionary *childDictionary = [self dictionaryForNode:childNode parentResult:resultForNode];
			if (childDictionary)
			{
				[childContentArray addObject:childDictionary];
			}
			childNode = childNode->next;
		}
        
		if ([childContentArray count] > 0)
		{
			[resultForNode setObject:childContentArray forKey:@"nodeChildArray"];
		}
	}
	
	return resultForNode;
}


- (NSArray*)performXPathQuery:(xmlDocPtr)doc query:(NSString*)query
{
    xmlXPathContextPtr xpathCtx;
    xmlXPathObjectPtr xpathObj;
    
    /* Create xpath evaluation context */
    xpathCtx = xmlXPathNewContext(doc);
    if (xpathCtx == NULL)
	{
		NSLog(@"Unable to create XPath context.");
		return nil;
    }
    
    /* Evaluate xpath expression */
    xpathObj = xmlXPathEvalExpression((xmlChar *)[query cStringUsingEncoding:NSUTF8StringEncoding], xpathCtx);
    if (xpathObj == NULL)
    {
		NSLog(@"Unable to evaluate XPath.");
		return nil;
    }
	
	xmlNodeSetPtr nodes = xpathObj->nodesetval;
	if (!nodes)
	{
		NSLog(@"Nodes was nil.");
		return nil;
	}
	
	NSMutableArray *resultNodes = [NSMutableArray array];
	for (NSInteger i = 0; i < nodes->nodeNr; i++)
	{
		NSDictionary *nodeDictionary = [self dictionaryForNode:nodes->nodeTab[i] parentResult:nil];
		if (nodeDictionary)
		{
			[resultNodes addObject:nodeDictionary];
		}
	}
    
    /* Cleanup */
    xmlXPathFreeObject(xpathObj);
    xmlXPathFreeContext(xpathCtx);
    
    return resultNodes;
}


- (NSArray*)performHTMLXPathQuery:(NSData*)document query:(NSString*)query
{
    xmlDocPtr doc;
    
    /* Load XML document */
	doc = htmlReadMemory([document bytes], [document length], "", NULL, HTML_PARSE_NOWARNING | HTML_PARSE_NOERROR);
	
    if (doc == NULL)
	{
		NSLog(@"Unable to parse.");
		return nil;
    }
	
	NSArray *result = [self performXPathQuery:doc query:query];
    xmlFreeDoc(doc);
	
	return result;
}


- (NSArray*)performXMLXPathQuery:(NSData*)document query:(NSString*)query
{
    xmlDocPtr doc;
	
    /* Load XML document */
	doc = xmlReadMemory([document bytes], [document length], "", NULL, XML_PARSE_RECOVER);
	
    if (doc == NULL)
	{
		NSLog(@"Unable to parse.");
		return nil;
    }
	
	NSArray *result = [self performXPathQuery:doc query:query];
    xmlFreeDoc(doc); 
	
	return result;
}


- (NSDictionary *)generateMetaData
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"PhoneNumberMetaData" ofType:@"xml"];
    NSData *xmlData = [NSData dataWithContentsOfFile:filePath];

    if (xmlData == NULL)
    {
        return nil;
    }
    
    NSArray *territoryArray = [self performXMLXPathQuery:xmlData query:@"/phoneNumberMetadata/territories/territory"];
    NSMutableDictionary *coreMetaData = [[NSMutableDictionary alloc] initWithCapacity:[territoryArray count]];
    
    for (id territory in territoryArray)
    {
        NSString *nodeName = [territory valueForKey:@"nodeName"];
        if (nodeName == nil || [nodeName isEqualToString:@"territory"] == NO)
        {
            continue;
        }
        
        NBPhoneMetaData *newTerritory = [[NBPhoneMetaData alloc] init];

        NSArray *nodeAttributeArray = [territory valueForKey:@"nodeAttributeArray"];
        if (nodeAttributeArray && [nodeAttributeArray count] > 0)
        {
            for (id attribute in nodeAttributeArray)
            {
                [newTerritory setAttributes:attribute];
            }
        }
        
        NSArray *nodeChildArray = [territory valueForKey:@"nodeChildArray"];
        for (id childNode in nodeChildArray)
        {
            if ([newTerritory setChilds:childNode] == NO)
            {
                NSLog(@"====== %@", childNode);
            }
        }
        
        NSString *countryKey = [NSString stringWithFormat:@"%@.%@", newTerritory.codeID ,newTerritory.countryCode];
        [coreMetaData setObject:newTerritory forKey:countryKey];
    }
    
    NSLog(@"territory count %d / %d", [territoryArray count], [coreMetaData count]);
    
    return coreMetaData;
}


@end
