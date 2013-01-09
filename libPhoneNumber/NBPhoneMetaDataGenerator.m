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
NSString *letters = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";

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
        NSString *instanceName = @"";
        [srcImplement appendString:[self encodeNSDictionary:data indent:1 createdInstanceName:&instanceName]];
        
        srcCode = [NSString stringWithFormat:stringContent, name, name, name, srcImplement, instanceName];
    }
    
    return srcCode;
}

- (NSString *)genRandStringLength:(int)len {
    
    NSMutableString *randomString = [NSMutableString stringWithCapacity: len];
    
    for (int i=0; i<len; i++) {
        [randomString appendFormat: @"%C", [letters characterAtIndex: arc4random() % [letters length]]];
    }
    
    return randomString;
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


- (NSString*)encodeNSDictionary:(NSDictionary*)object indent:(int)depth createdInstanceName:(NSString**)instanceName
{
    NSMutableString *curImplement = [[NSMutableString alloc] initWithString:@""];
    NSEnumerator *enumerator = [object keyEnumerator];
    id curKey = nil;
    
    NSString *tempInstanceName = [NSString stringWithFormat:@"%@_%@_%d", [self genRandStringLength:16], @"NSDictionary", depth];
    
    if (instanceName != NULL && (*instanceName) != nil)
        (*instanceName) = [tempInstanceName copy];
    
    NSString *createInstancFromat = @"%@NSMutableDictionary *%@ = [[NSMutableDictionary alloc] init];\n";
    
    NSString *currentSyntaxFormat = nil;
    NSString *buildedSyntax = nil;
    
    [curImplement appendFormat:createInstancFromat, [self indentTab:depth], tempInstanceName];
    
    while ((curKey = [enumerator nextObject]))
    {
        id curObject = [object objectForKey:curKey];
        currentSyntaxFormat = @"%@[%@ setObject:%@ forKey:@\"%@\"];\n";
        
        if ([curObject isKindOfClass:[NSString class]])
        {
            [curImplement appendFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, [self encodeNSString:curObject], curKey];
        }
        else if ([curObject isKindOfClass:[NSArray class]])
        {
            NSString *tempArrayInstanceName = @"";
            buildedSyntax = [self encodeNSArray:curObject indent:depth+1 createdInstanceName:&tempArrayInstanceName];
            [curImplement appendString:buildedSyntax];
            [curImplement appendString:[NSString stringWithFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, tempArrayInstanceName, curKey]];
        }
        else if ([curObject isKindOfClass:[NSDictionary class]])
        {
            NSString *tempDictionaryInstanceName = @"";
            buildedSyntax = [self encodeNSDictionary:curObject indent:depth+1 createdInstanceName:&tempDictionaryInstanceName];
            [curImplement appendString:buildedSyntax];
            [curImplement appendString:[NSString stringWithFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, tempDictionaryInstanceName, curKey]];
        }
        else if ([curObject isKindOfClass:[NSNumber class]])
        {
            [curImplement appendFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, [self encodeNSNumber:curObject], curKey];
        }
        else if ([curObject isKindOfClass:[NSNull class]])
        {
            [curImplement appendFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, [self encodeNSNull:curObject], curKey];
        }
        else
        {
            NSString *warningString = [NSString stringWithFormat:@"#warning cant parse data %@ key %@", curObject, curKey];
            [curImplement appendString:warningString];
            NSLog(@"!!! ERROR !!! - %@", warningString);
        }
    }
    
    return curImplement;
}


- (NSString*)encodeNSArray:(NSArray*)object indent:(int)depth createdInstanceName:(NSString**)instanceName
{
    NSMutableString *curImplement = [[NSMutableString alloc] initWithString:@""];
    NSString *tempInstanceName = [NSString stringWithFormat:@"%@_%@_%d", [self genRandStringLength:16], @"NSArray", depth];
    
    if (instanceName != NULL && (*instanceName) != nil)
        (*instanceName) = [tempInstanceName copy];
        
    NSString *createInstancFromat = @"%@NSMutableArray *%@ = [[NSMutableArray alloc] init];\n";
    
    NSString *currentSyntaxFormat = nil;
    NSString *buildedSyntax = nil;
    
    [curImplement appendFormat:createInstancFromat, [self indentTab:depth], tempInstanceName];
    
    for (id data in object)
    {
        currentSyntaxFormat = @"%@[%@ addObject:%@];\n";
        
        if ([data isKindOfClass:[NSString class]])
        {
            [curImplement appendFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, [self encodeNSString:data]];
        }
        else if ([data isKindOfClass:[NSNumber class]])
        {
            [curImplement appendFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, [self encodeNSNumber:data]];
        }
        else if ([data isKindOfClass:[NSArray class]])
        {
            NSString *tempArrayInstanceName = @"";
            buildedSyntax = [self encodeNSArray:data indent:depth+1 createdInstanceName:&tempArrayInstanceName];
            [curImplement appendString:buildedSyntax];
            [curImplement appendString:[NSString stringWithFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, tempArrayInstanceName]];
        }
        else if ([data isKindOfClass:[NSDictionary class]])
        {
            NSString *tempDictionaryInstanceName = @"";
            buildedSyntax = [self encodeNSDictionary:data indent:depth+1 createdInstanceName:&tempDictionaryInstanceName];
            [curImplement appendString:buildedSyntax];
            [curImplement appendString:[NSString stringWithFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, tempDictionaryInstanceName]];
        }
        else if ([data isKindOfClass:[NSNull class]])
        {
            [curImplement appendFormat:currentSyntaxFormat, [self indentTab:depth], tempInstanceName, [self encodeNSNull:data]];
        }
        else
        {
            NSString *warningString = [NSString stringWithFormat:@"#warning cant parse data %@ class %@", data, [data class]];
            [curImplement appendString:warningString];
            NSLog(@"!!! ERROR !!! - %@", warningString);
        }
    
    }
    return curImplement;
}


- (NSString*)encodeNSNull:(NSNull*)object
{
    return [NSString stringWithFormat:@"%@", @"[NSNull null]"];
}


- (NSString*)encodeNSString:(NSString*)object
{
    return [NSString stringWithFormat:@"@\"%@\"", [object stringByReplacingOccurrencesOfString:@"\\" withString:@"\\\\"]];
}


- (NSString*)encodeNSNumber:(NSNumber*)object
{
    return [NSString stringWithFormat:@"[NSNumber numberWithLongLong:%@]", object];
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
