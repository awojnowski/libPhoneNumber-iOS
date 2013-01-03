//
//  NBPhoneNumberDesc.h
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NBPhoneNumberDesc : NSObject

// from phonemetadata.pb.js
/* 2 */ @property (nonatomic, strong, readwrite) NSString *nationalNumberPattern;
/* 3 */ @property (nonatomic, strong, readwrite) NSString *possibleNumberPattern;
/* 6 */ @property (nonatomic, strong, readwrite) NSString *exampleNumber;

- (id)initWithData:(id)data;

@end
