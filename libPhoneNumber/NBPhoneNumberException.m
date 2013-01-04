//
//  NBPhoneNumberException.m
//  libPhoneNumber
//
//  Created by ishtar on 13. 1. 4..
//  Copyright (c) 2013년 NHN. All rights reserved.
//

#import "NBPhoneNumberException.h"

@implementation NBPhoneNumberException

+ (id)initWithException
{
    NSMutableDictionary *info = [NSMutableDictionary dictionary];
    return [[NBPhoneNumberException alloc] initWithName:@"" reason:@"" userInfo:info];
}

@end