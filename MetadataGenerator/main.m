//
//  main.m
//  metadataGenerator
//
//  Created by ishtar on 13. 1. 7..
//  Copyright (c) 2013년 NHN. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NBPhoneMetaDataGenerator.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {        
        NBPhoneMetaDataGenerator *classGenerator = [[NBPhoneMetaDataGenerator alloc] init];
        [classGenerator generateMetadataClasses];
    }
    return 0;
}

