//
//  NBPhoneNumberDefines.h
//  libPhoneNumber
//
//  Created by ishtar on 13. 1. 3..
//  Copyright (c) 2013년 NHN. All rights reserved.
//

#ifndef libPhoneNumber_NBPhoneNumberDefines_h
#define libPhoneNumber_NBPhoneNumberDefines_h

#define NB_YES [NSNumber numberWithBool:YES]
#define NB_NO [NSNumber numberWithBool:NO]

#pragma mark - Enum -
typedef enum {
    E164 = 0,
    INTERNATIONAL = 1,
    NATIONAL = 2,
    RFC3966 = 3
} NBEPhoneNumberFormat;


typedef enum {
    FIXED_LINE = 0,
    MOBILE = 1,
    // In some regions (e.g. the USA), it is impossible to distinguish between
    // fixed-line and mobile numbers by looking at the phone number itself.
    FIXED_LINE_OR_MOBILE = 2,
    // Freephone lines
    TOLL_FREE = 3,
    PREMIUM_RATE = 4,
    // The cost of this call is shared between the caller and the recipient, and
    // is hence typically less than PREMIUM_RATE calls. See
    // http://en.wikipedia.org/wiki/Shared_Cost_Service for more information.
    SHARED_COST = 5,
    // Voice over IP numbers. This includes TSoIP (Telephony Service over IP).
    VOIP = 6,
    // A personal number is associated with a particular person, and may be routed
    // to either a MOBILE or FIXED_LINE number. Some more information can be found
    // here = http://en.wikipedia.org/wiki/Personal_Numbers
    PERSONAL_NUMBER = 7,
    PAGER = 8,
    // Used for 'Universal Access Numbers' or 'Company Numbers'. They may be
    // further routed to specific offices, but allow one number to be used for a
    // company.
    UAN = 9,
    // Used for 'Voice Mail Access Numbers'.
    VOICEMAIL = 10,
    // A phone number is of type UNKNOWN when it does not fit any of the known
    // patterns for a specific region.
    UNKNOWN = -1
} NBEPhoneNumberType;


typedef enum {
    NOT_A_NUMBER = 0,
    NO_MATCH = 1,
    SHORT_NSN_MATCH = 2,
    NSN_MATCH = 3,
    EXACT_MATCH = 4
} NBEMatchType;


typedef enum {
    IS_POSSIBLE = 0,
    INVALID_COUNTRY_CODE = 1,
    TOO_SHORT = 2,
    TOO_LONG = 3
} NBEValidationResult;


typedef enum {
    FROM_NUMBER_WITH_PLUS_SIGN = 1,
    FROM_NUMBER_WITH_IDD = 5,
    FROM_NUMBER_WITHOUT_PLUS_SIGN = 10,
    FROM_DEFAULT_COUNTRY = 20
} NBECountryCodeSource;


@interface NSArray (NBAdditions)
- (id)safeObjectAtIndex:(NSUInteger)index;
@end

@implementation NSArray (NBAdditions)
- (id)safeObjectAtIndex:(NSUInteger)index
{
    @synchronized(self)
    {
        if(index >= [self count]) return nil;
        
        id res = [self objectAtIndex:index];
        
        if (res == nil || (NSNull*)res == [NSNull null])
            return nil;
        
        return res;
    }
}
@end

#endif
