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

@end
