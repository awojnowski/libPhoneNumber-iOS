# libPhoneNumber for iOS
* NBPhoneMetaDataGenerator (NSDictionaey from JSON from metadata.js)
* NBPhoneNumber, NBNumberFormat, NBPhoneNumberDesc, NBPhoneMetaData (Metadata classes) 

* NBPhoneNumberUtil (from phonenumberutil.js)

### Todo
* Add JSON parse implementation for iOS 4.x (It will remove future)

### Metadata managing
#### - AS-IS
    1. Load javascript object (metadata.js, metadatafortesting.js) -> this may causes performance issues
    2. Convert JSON from javascript object (using web - PHP)

#### - TO-BE
    * Create static matadata class without using NBPhoneMetaDataGenerator

### Rule for porting from javascript libPhonenumber
* Retain javascript libPhonenumber algorithms & codes(like comments etc) as possible for maintenance with *.js
