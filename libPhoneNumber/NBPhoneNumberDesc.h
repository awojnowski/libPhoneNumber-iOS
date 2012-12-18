//
//  NBPhoneNumberDesc.h
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NBPhoneNumberDesc : NSObject

@property (nonatomic, strong, readwrite) NSString *nationalNumberPattern, *possibleNumberPattern, *exampleNumber;

@end
