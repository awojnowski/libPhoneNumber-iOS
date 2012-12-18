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
    return [NSString stringWithFormat:@"%@ [%@ (ex)%@]", self.nationalNumberPattern, self.possibleNumberPattern, self.exampleNumber];
}


@end
