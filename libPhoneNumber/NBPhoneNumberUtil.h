//
//  NBPhoneNumberUtil.h
//  Band
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NBPhoneNumberDefines.h"

@class NBPhoneMetaData, NBPhoneNumber;

@interface NBPhoneNumberUtil : NSObject

+ (NBPhoneNumberUtil*)sharedInstance;

+ (NSString*)stringByTrimming:(NSString*)aString;

- (NSString*)numbersOnly:(NSString*)phoneNumber;
- (NSArray*)regionCodeFromCountryCode:(UInt32)countryCodeNumber;
- (NSString*)countryCodeFromRregionCode:(NSString*)regionCode;


// functions

- (BOOL)isNumberGeographical:(NBPhoneNumber*)phoneNumber;

- (NBPhoneNumber*)getExampleNumber:(NSString*)regionCode;
- (NBPhoneNumber*)getExampleNumberForType:(NSString*)regionCode type:(NBEPhoneNumberType)type;
- (NBPhoneNumber*)getExampleNumberForNonGeoEntity:(UInt32)countryCallingCode;

- (NBPhoneMetaData*)getMetadataForRegion:(NSString*)regionCode;
- (NBPhoneMetaData*)getMetadataForNonGeographicalRegion:(UInt32)countryCallingCode;

- (NSString*)extractPossibleNumber:(NSString*)phoneNumber;
- (NSString*)getNddPrefixForRegion:(NSString*)regionCode stripNonDigits:(BOOL)stripNonDigits;
- (NSString*)getNationalSignificantNumber:(NBPhoneNumber*)phoneNumber;
- (NBEPhoneNumberType)getNumberType:(NBPhoneNumber*)phoneNumber;

- (UInt32)getCountryCodeForRegion:(NSString*)regionCode;

- (NSString*)getRegionCodeForCountryCode:(UInt32)countryCallingCode;
- (NSArray*)getRegionCodesForCountryCode:(UInt32)countryCallingCode;
- (NSString*)getRegionCodeForNumber:(NBPhoneNumber*)phoneNumber;

- (BOOL)canBeInternationallyDialled:(NBPhoneNumber*)number;
- (BOOL)truncateTooLongNumber:(NBPhoneNumber*)number;

- (BOOL)isValidNumber:(NBPhoneNumber*)number;
- (BOOL)isViablePhoneNumber:(NSString*)phoneNumber;
- (BOOL)isAlphaNumber:(NSString*)number;
- (BOOL)isValidNumberForRegion:(NBPhoneNumber*)number regionCode:(NSString*)regionCode;
- (BOOL)isNANPACountry:(NSString*)regionCode;
- (BOOL)isLeadingZeroPossible:(UInt32)countryCallingCode;
- (NBEMatchType)isNumberMatch:(id)firstNumberIn second:(id)secondNumberIn;

- (BOOL)isPossibleNumber:(NBPhoneNumber*)number;
- (NBEValidationResult)isPossibleNumberWithReason:(NBPhoneNumber*)number;
- (BOOL)isPossibleNumberString:(NSString*)number regionDialingFrom:(NSString*)regionDialingFrom;

- (int)getLengthOfGeographicalAreaCode:(NBPhoneNumber*)phoneNumber;
- (int)getLengthOfNationalDestinationCode:(NBPhoneNumber*)phoneNumber;

- (NSString*)convertAlphaCharactersInNumber:(NSString*)number;

- (NSString*)normalizePhoneNumber:(NSString*)phoneNumber;
- (NSString*)normalizeDigitsOnly:(NSString*)number;

- (BOOL)maybeStripNationalPrefixAndCarrierCode:(NSString**)numberStr metadata:(NBPhoneMetaData*)metadata carrierCode:(NSString**)carrierCode;
- (NBECountryCodeSource)maybeStripInternationalPrefixAndNormalize:(NSString**)numberStr possibleIddPrefix:(NSString*)possibleIddPrefix;
- (UInt32)maybeExtractCountryCode:(NSString*)number metadata:(NBPhoneMetaData*)defaultRegionMetadata
                   nationalNumber:(NSString**)nationalNumber keepRawInput:(BOOL)keepRawInput phoneNumber:(NBPhoneNumber**)phoneNumber;

- (NBPhoneNumber*)parse:(NSString*)numberToParse defaultRegion:(NSString*)defaultRegion;
- (NBPhoneNumber*)parseAndKeepRawInput:(NSString*)numberToParse defaultRegion:(NSString*)defaultRegion;

- (NSString*)format:(NBPhoneNumber*)phoneNumber numberFormat:(NBEPhoneNumberFormat)numberFormat;
- (NSString*)formatByPattern:(NBPhoneNumber*)number numberFormat:(NBEPhoneNumberFormat)numberFormat userDefinedFormats:(NSArray*)userDefinedFormats;
- (NSString*)formatNumberForMobileDialing:(NBPhoneNumber*)number regionCallingFrom:(NSString*)regionCallingFrom withFormatting:(BOOL)withFormatting;
- (NSString*)formatOutOfCountryCallingNumber:(NBPhoneNumber*)number regionCallingFrom:(NSString*)regionCallingFrom;
- (NSString*)formatOutOfCountryKeepingAlphaChars:(NBPhoneNumber*)number regionCallingFrom:(NSString*)regionCallingFrom;
- (NSString*)formatNationalNumberWithCarrierCode:(NBPhoneNumber*)number carrierCode:(NSString*)carrierCode;
- (NSString*)formatInOriginalFormat:(NBPhoneNumber*)number regionCallingFrom:(NSString*)regionCallingFrom;
- (NSString*)formatNationalNumberWithPreferredCarrierCode:(NBPhoneNumber*)number fallbackCarrierCode:(NSString*)fallbackCarrierCode;

@end
