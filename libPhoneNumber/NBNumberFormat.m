//
//  NBPhoneNumberFormat.m
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import "NBNumberFormat.h"


@implementation NBNumberFormat

@synthesize name, fullName, leadingDigitsPattern, pattern, format, nationalPrefixFormattingRule, carrierCodeFormattingRule, intlFormat;

- (id)init
{
    self = [super init];
    
    if (self)
    {
        [self setName:@"NumberFormat"];
        [self setFullName:@"i18n.phonenumbers.NumberFormat"];
        [self setLeadingDigitsPattern:[[NSMutableArray alloc] init]];
    }
    
    return self;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"[%@ (%@) : %@, %@] - %@(%@) intlFormat[%@] leadingDigits[%@] [%@]",
            self.name, self.fullName, self.nationalPrefixFormattingRule, self.carrierCodeFormattingRule, self.pattern, self.format, self.intlFormat, self.leadingDigitsPattern, [self.nationalPrefixOptionalWhenFormatting boolValue]?@"Y":@"N"];
}

@end
