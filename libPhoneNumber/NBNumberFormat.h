//
//  NBPhoneNumberFormat.h
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NBNumberFormat : NSObject

@property (nonatomic, strong, readwrite) NSString *name, *fullName;
@property (nonatomic, strong, readwrite) NSString *intlFormat, *carrierCodeFormattingRule;

// from phonemetadata.pb.js
@property (nonatomic, strong, readwrite) NSString *pattern, *format;
@property (nonatomic, strong, readwrite) NSMutableArray *leadingDigitsPattern;
@property (nonatomic, strong, readwrite) NSNumber *nationalPrefixOptionalWhenFormatting;
@property (nonatomic, strong, readwrite) NSString *nationalPrefixFormattingRule, *domesticCarrierCodeFormattingRule;

@end
