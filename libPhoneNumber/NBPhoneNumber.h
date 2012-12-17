//
//  NBPhoneNumber.h
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 13..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    FROM_NUMBER_WITH_PLUS_SIGN = 1,
    FROM_NUMBER_WITH_IDD = 5,
    FROM_NUMBER_WITHOUT_PLUS_SIGN = 10,
    FROM_DEFAULT_COUNTRY = 20
} CountryCodeSource;

@interface NBPhoneNumber : NSObject

@property (nonatomic, strong, readwrite) NSString *countryCode, *nationalNumber, *extension;
@property (nonatomic, assign, readwrite) BOOL italianLeadingZero;
@property (nonatomic, strong, readwrite) NSString *rawInput;
@property (nonatomic, assign, readwrite) CountryCodeSource countryCodeSource;
@property (nonatomic, strong, readwrite) NSString *PreferredDomesticCarrierCode;

- (void)clearCountryCodeSource;

@end
