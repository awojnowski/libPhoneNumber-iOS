# libPhoneNumber for iOS

* NBPhoneNumber, NBNumberFormat, NBPhoneNumberDesc, NBPhoneMetaData (Metadata classes) 

* NBPhoneNumberUtil (from phonenumberutil.js)

## Usage
### Add source files to your projects from libPhoneNumber
    - NBPhoneNumberUtil.h, .m
    
    - NBNumberFormat.h, .m
    - NBPhoneNumber.h, .m
    - NBPhoneNumberDesc.h, .m
    - NBPhoneNumberDefines.h
    
    - NBPhoneNumberMetadata.h, .m
    - NBPhoneNumberMetadataForTesting.h, .m

    See sample test code from "libPhoneNumber-iOS / libPhoneNumberTests / libPhoneNumberTests.m"

### Visit http://code.google.com/p/libphonenumber/ for more information

## Metadata managing (updating metadata) 
#### Step1. Fetch "metadata.js" and "metadatafortesting.js" from Repositories
    svn checkout http://libphonenumber.googlecode.com/svn/trunk/ libphonenumber-read-only
      
#### Step2. Convert Javascript Object to JSON using PHP scripts 
    Output - "PhoneNumberMetaData.json" and "PhoneNumberMetaDataForTesting.json"

#### Step3. Generate binary file from NBPhoneMetaDataGenerator
    Output - "NBPhoneNumberMetadata.plist" and "NBPhoneNumberMetadataForTesting.plist"

#### Step4. Update exists "NBPhoneNumberMetadata.plist" and "NBPhoneNumberMetadataForTesting.plist" files

## Porting Rules
* **Remain** javascript libPhonenumber code logic (and comments etc) as possible for maintenance with *.js
