//
//  NBPhoneNumberDesc.m
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import "NBPhoneNumberDesc.h"
#import "NBPhoneNumberDefines.h"

@implementation NBPhoneNumberDesc

@synthesize nationalNumberPattern, possibleNumberPattern, exampleNumber;


- (id)initWithData:(id)data
{
    self = [self init];
    
    if (self && data != nil && [data isKindOfClass:[NSArray class]])
    {
        /* 2 */ self.nationalNumberPattern = [data safeObjectAtIndex:2];
        /* 3 */ self.possibleNumberPattern = [data safeObjectAtIndex:3];
        /* 6 */ self.exampleNumber = [data safeObjectAtIndex:6];
    }
    
    return self;
}


- (id)init
{
    self = [super init];
    
    if (self)
    {
    }
    
    return self;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"nationalNumberPattern[%@] possibleNumberPattern[%@] exampleNumber[%@]", self.nationalNumberPattern, self.possibleNumberPattern, self.exampleNumber];
}

- (id)copyWithZone:(NSZone *)zone
{
	NBPhoneNumberDesc *phoneDescCopy = [[NBPhoneNumberDesc allocWithZone:zone] init];
    
    phoneDescCopy.nationalNumberPattern = [self.nationalNumberPattern copy];
    phoneDescCopy.possibleNumberPattern = [self.possibleNumberPattern copy];
    phoneDescCopy.exampleNumber = [self.exampleNumber copy];
    
	return phoneDescCopy;
}

- (BOOL)isEqual:(id)object
{
    if ([object isKindOfClass:[NBPhoneNumberDesc class]] == NO)
        return NO;
    
    NBPhoneNumberDesc *other = object;
    return [self.nationalNumberPattern isEqual:other.nationalNumberPattern] &&
        [self.possibleNumberPattern isEqual:other.possibleNumberPattern] &&
        [self.exampleNumber isEqual:other.exampleNumber];
}

@end
