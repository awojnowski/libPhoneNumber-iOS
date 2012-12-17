//
//  NBPhoneNumberManager.h
//  Band
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NBPhoneNumberManager : NSObject

+ (NBPhoneNumberManager*)sharedInstance;

- (NSString*)numbersOnly:(NSString*)phoneNumber;

- (NSArray*)regionCodeFromCountryCode:(NSString*)countryCodeNumber;
- (NSString*)countryCodeFromRregionCode:(NSString*)regionCode;

@end
