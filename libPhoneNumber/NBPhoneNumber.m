//
//  NBPhoneNumber.m
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 13..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import "NBPhoneNumber.h"

@implementation NBPhoneNumber


- (id)init
{
    self = [super init];
    
    if (self)
    {
        [self clearCountryCodeSource];
    }
    
    return self;
}


- (void)clearCountryCodeSource
{
    [self setCountryCodeSource:FROM_NUMBER_WITH_PLUS_SIGN];
}


- (id)copyWithZone:(NSZone *)zone
{
	NBPhoneNumber *phoneNumberCopy = [[NBPhoneNumber allocWithZone:zone] init];
    
	phoneNumberCopy.countryCode = [self.countryCode copy];
    phoneNumberCopy.nationalNumber = [self.nationalNumber copy];
    phoneNumberCopy.extension = [self.extension copy];
    
    phoneNumberCopy.italianLeadingZero = [self.italianLeadingZero copy];
    phoneNumberCopy.rawInput = [self.rawInput copy];
    phoneNumberCopy.countryCodeSource = self.countryCodeSource;
    phoneNumberCopy.PreferredDomesticCarrierCode = [self.PreferredDomesticCarrierCode copy];
    
	return phoneNumberCopy;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"(countryCode [%@], nationalNumber [%@], extension [%@])", self.countryCode, self.nationalNumber, self.extension];
}

@end
