//
//  NBPhoneNumberFormat.m
//  libPhoneNumber
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import "NBNumberFormat.h"


@implementation NBNumberFormat

@synthesize leadingDigitsPattern, pattern, format, nationalPrefixFormattingRule, carrierCodeFormattingRule, intlFormat;

- (id)init
{
    self = [super init];
    
    if (self)
    {
        [self setLeadingDigitsPattern:[[NSMutableArray alloc] init]];
    }
    
    return self;
}


- (NSString *)description
{
    return [NSString stringWithFormat:@"[%@, %@] - %@(%@) intlFormat[%@] leadingDigits[%@] [%@]",
            self.nationalPrefixFormattingRule, self.carrierCodeFormattingRule, self.pattern, self.format, self.intlFormat, self.leadingDigitsPattern, [self.nationalPrefixOptionalWhenFormatting boolValue]?@"Y":@"N"];
}


- (id)copyWithZone:(NSZone *)zone
{
	NBNumberFormat *phoneFormatCopy = [[NBNumberFormat allocWithZone:zone] init];
    
    phoneFormatCopy.intlFormat = [self.intlFormat copy];
    phoneFormatCopy.carrierCodeFormattingRule = [self.carrierCodeFormattingRule copy];
    phoneFormatCopy.pattern = [self.pattern copy];
    phoneFormatCopy.nationalPrefixFormattingRule = [self.nationalPrefixFormattingRule copy];
    phoneFormatCopy.format = [self.format copy];
    phoneFormatCopy.nationalPrefixOptionalWhenFormatting = [self.nationalPrefixOptionalWhenFormatting copy];
    phoneFormatCopy.leadingDigitsPattern = [self.leadingDigitsPattern copy];
    
	return phoneFormatCopy;
}

@end
