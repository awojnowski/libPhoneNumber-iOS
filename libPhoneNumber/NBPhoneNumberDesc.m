//
//  NBPhoneNumberDesc.m
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import "NBPhoneNumberDesc.h"

@implementation NBPhoneNumberDesc

@synthesize nationalNumberPattern, possibleNumberPattern, exampleNumber;

- (id)init
{
    self = [super init];
    
    if (self)
    {
        [self setNationalNumberPattern:@"NA"];
        [self setPossibleNumberPattern:@"NA"];
    }
    
    return self;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"\n          natnumpat[%@]\n          posnumpat[%@]\n          ex[%@]", self.nationalNumberPattern, self.possibleNumberPattern, self.exampleNumber];
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
