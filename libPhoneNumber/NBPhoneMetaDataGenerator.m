//
//  NBPhoneMetaDataGenerator.m
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import "NBPhoneMetaDataGenerator.h"
#import "NBPhoneNumberMetadataForTesting.h"

#define INDENT_TAB @"    "


@implementation NBPhoneMetaDataGenerator


- (id)init
{
    self = [super init];
    
    if (self)
    {
    }
    
    return self;
}


- (void)generateMetadataClasses
{
    NSDictionary *realMetadata = nil, *testMetadata = nil;
    realMetadata = [self generateMetaData];
    testMetadata = [self generateMetaDataWithTest];
    
    @try
    {
        if ([[NSFileManager defaultManager] createDirectoryAtPath:@"src" withIntermediateDirectories:YES attributes:nil error:nil] == NO )
        {
            NSLog(@"Fail to create directory");
            return;
        }
        
        [self createClassWithDictionary:realMetadata name:@"NBPhoneNumberMetadata"];
        [self createClassWithDictionary:testMetadata name:@"NBPhoneNumberMetadataForTesting"];        
    }
    @catch (NSException *exception)
    {
        NSLog(@"Error for creating metadata classes : %@", exception.reason);
    }
}


- (void)createClassWithDictionary:(NSDictionary*)data name:(NSString*)name
{
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    NSString *curDir = [[NSFileManager defaultManager] currentDirectoryPath];
    NSString *filePathHeader = [NSString stringWithFormat:@"%@/src/%@.h", curDir, name];
    NSString *filePathSource = [NSString stringWithFormat:@"%@/src/%@.m", curDir, name];
    
    NSString *codeStringHeader = [self generateSourceCodeWith:data name:name type:0];
    NSString *codeStringSource = [self generateSourceCodeWith:data name:name type:1];
    
    NSData *dataToWrite = [codeStringHeader dataUsingEncoding:NSUTF8StringEncoding];
    [fileManager createFileAtPath:filePathHeader contents:dataToWrite attributes:nil];
    
    dataToWrite = [codeStringSource dataUsingEncoding:NSUTF8StringEncoding];
    [fileManager createFileAtPath:filePathSource contents:dataToWrite attributes:nil];
    
    NSLog(@"Create file to...\n* %@\n* %@", filePathHeader, filePathSource);
}


- (NSString *)generateSourceCodeWith:(NSDictionary*)data name:(NSString*)name type:(int)type
{
    NSString *srcCode = @"";
    
    if (type == 0)
    {
        NSString *curDir = [[NSFileManager defaultManager] currentDirectoryPath];
        NSString *filePath = [NSString stringWithFormat:@"%@/%@", curDir, @"resources/PhoneNumberTemplateClass.h"];
        NSString *stringContent =  [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        
        // header code
        srcCode = [NSString stringWithFormat:stringContent, name, name];
    }
    else if (type == 1)
    {
        NSMutableString *srcImplement = [[NSMutableString alloc] initWithString:@""];
        
        NSString *curDir = [[NSFileManager defaultManager] currentDirectoryPath];
        NSString *filePath = [NSString stringWithFormat:@"%@/%@", curDir, @"resources/PhoneNumberTemplateClass.m"];
        NSString *stringContent =  [NSString stringWithContentsOfFile:filePath encoding:NSUTF8StringEncoding error:nil];
        
        // source code
        [srcImplement appendString:[self encodeNSDictionary:data indent:2]];
        
        srcCode = [NSString stringWithFormat:stringContent, name, name, name, srcImplement];
    }
    
    return srcCode;
}


- (NSString*)indentTab:(int)depth
{
    NSMutableString *resTab = [[NSMutableString alloc] initWithString:@""];
    for (int i=0; i<depth; i++)
    {
        [resTab appendString:INDENT_TAB];
    }
    return resTab;
}


- (NSString*)encodeNSDictionary:(NSDictionary*)object indent:(int)depth
{
    NSMutableString *curImplement = [[NSMutableString alloc] initWithString:@""];
    NSEnumerator *enumerator = [object keyEnumerator];
    id curKey = nil;
    
    while ((curKey = [enumerator nextObject]))
    {
        id curObject = [object objectForKey:curKey];
        
        if ([curObject isKindOfClass:[NSString class]])
        {
            [curImplement appendString:
                [NSString stringWithFormat:@"%@, @\"%@\", ", [self encodeNSString:curObject indent:depth+1], curKey]];
        }
        else if ([curObject isKindOfClass:[NSArray class]])
        {
            [curImplement appendString:
                [NSString stringWithFormat:@"%@, @\"%@\", ", [self encodeNSArray:curObject indent:depth+1], curKey]];
        }
        else if ([curObject isKindOfClass:[NSDictionary class]])
        {
            [curImplement appendString:
                [NSString stringWithFormat:@"%@, @\"%@\", ", [self encodeNSDictionary:curObject indent:depth+1], curKey]];
        }
        else if ([curObject isKindOfClass:[NSNumber class]])
        {
            [curImplement appendString:
                [NSString stringWithFormat:@"%@, @\"%@\", ", [self encodeNSNumber:curObject indent:depth+1], curKey]];
        }
        else if ([curObject isKindOfClass:[NSNull class]])
        {
            [curImplement appendString:
                [NSString stringWithFormat:@"%@, @\"%@\", ", [self encodeNSNull:curObject indent:depth+1], curKey]];
        }
        else
        {
            NSLog(@"what is this ??? [key:%@] [val:%@] [class:%@]", curKey, curObject, [curObject class]);
        }
    }
    
    return [NSString stringWithFormat:@"\n%@[[NSDictionary alloc] initWithObjectsAndKeys:%@nil]", [self indentTab:depth], curImplement];
}


- (NSString*)encodeNSArray:(NSArray*)object indent:(int)depth
{
    NSMutableString *arrayString = [[NSMutableString alloc] initWithString:@""];
    for (id data in object)
    {
        if ([data isKindOfClass:[NSString class]])
            [arrayString appendString:[NSString stringWithFormat:@"%@, ", [self encodeNSString:data indent:depth+1]]];
        else if ([data isKindOfClass:[NSNumber class]])
            [arrayString appendString:[NSString stringWithFormat:@"[NSNumber numberWithLongLong:%@], ", data]];
        else if ([data isKindOfClass:[NSArray class]])
            [arrayString appendString:[NSString stringWithFormat:@"%@, ", [self encodeNSArray:data indent:depth+1]]];
        else if ([data isKindOfClass:[NSDictionary class]])
            [arrayString appendString:[NSString stringWithFormat:@"%@, ", [self encodeNSDictionary:data indent:depth+1]]];
        else if ([data isKindOfClass:[NSNull class]])
            [arrayString appendString:[NSString stringWithFormat:@"%@, ", [self encodeNSNull:data indent:depth+1]]];
        else
        {
            NSLog(@"what is this ??? [val:%@] [class:%@]", data, [data class]);
        }
    
    }
    return [NSString stringWithFormat:@"\n%@[[NSArray alloc] initWithObjects:%@nil]", [self indentTab:depth], arrayString];
}


- (NSString*)encodeNSNull:(NSNull*)object indent:(int)depth
{
    return [NSString stringWithFormat:@"\n%@%@", [self indentTab:depth], @"[NSNull null]"];
}


- (NSString*)encodeNSString:(NSString*)object indent:(int)depth
{
    return [NSString stringWithFormat:@"\n%@@\"%@\"",
                [self indentTab:depth], [object stringByReplacingOccurrencesOfString:@"\\" withString:@"\\\\"]];
}


- (NSString*)encodeNSNumber:(NSNumber*)object indent:(int)depth
{
    return [NSString stringWithFormat:@"\n%@%@", [self indentTab:depth], object];
}


- (NSDictionary *)generateMetaData
{
    NSString *curDir = [[NSFileManager defaultManager] currentDirectoryPath];
    NSString *filePath = [NSString stringWithFormat:@"%@/%@", curDir, @"resources/PhoneNumberMetaData.json"];
    return [self parseJSON:filePath];
}


- (NSDictionary *)generateMetaDataWithTest
{
    NSString *curDir = [[NSFileManager defaultManager] currentDirectoryPath];
    NSString *filePath = [NSString stringWithFormat:@"%@/%@", curDir, @"resources/PhoneNumberMetaDataForTesting.json"];
    return [self parseJSON:filePath];
}


- (NSDictionary *)parseJSON:(NSString*)filePath
{
    NSDictionary *jsonRes = nil;
    
    @try {
        NSData *jsonData = [NSData dataWithContentsOfFile:filePath];
        NSError *error = nil;
        jsonRes = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&error];
    }
    @catch (NSException *exception) {
        NSLog(@"Error : %@", exception.reason);
    }
    
    return jsonRes;
}


@end
