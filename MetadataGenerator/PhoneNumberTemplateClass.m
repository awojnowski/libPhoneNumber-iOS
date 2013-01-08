//
//  %@.m
//  libPhoneNumber
//
//  Created by ishtar on 13. 1. 8..
//  Copyright (c) 2013년 NHN. All rights reserved.
//

#import "%@.h"

@implementation %@

@synthesize metadata;


- (id)init
{
    self = [super init];
    if (self)
    {
        [self initMedata];
    }
    
    return self;
}


- (void)initMedata
{
    self.metadata = %@;
}


@end
