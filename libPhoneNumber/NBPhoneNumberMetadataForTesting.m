//
//  NBPhoneNumberMetadataForTesting.m
//  libPhoneNumber
//
//  Created by ishtar on 13. 1. 8..
//  Copyright (c) 2013년 NHN. All rights reserved.
//

#import "NBPhoneNumberMetadataForTesting.h"

@implementation NBPhoneNumberMetadataForTesting

@synthesize metadata;


- (id)init
{
    self = [super init];
    if (self)
    {
        [self initMedata];
    }
    
    return self;
}


- (void)initMedata
{
    self.metadata = 
        [[NSDictionary alloc] initWithObjectsAndKeys:
            [[NSDictionary alloc] initWithObjectsAndKeys:
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:nil], 
                    [[NSArray alloc] initWithObjects:nil], 
                    [[NSArray alloc] initWithObjects:nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"AD", [NSNumber numberWithLongLong:376], 
                    @"00", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], [NSNumber numberWithLongLong:1], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"AD", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:nil], 
                    [[NSArray alloc] initWithObjects:nil], 
                    [[NSArray alloc] initWithObjects:nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"BR", [NSNumber numberWithLongLong:55], 
                    @"0014", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], [NSNumber numberWithLongLong:1], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"19[023]|911", 
                        @"\\d{3}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"190", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"BR", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-578]\\d{4,14}", 
                        @"\\d{5,15}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[2378]\\d{8}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"4\\d{8}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"1800\\d{6}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"190[0126]\\d{6}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"AU", [NSNumber numberWithLongLong:61], 
                    @"001[12]", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0", 
                    [NSNull null], 
                    @"0011", 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})(\\d{3})(\\d{3})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"1", nil], 
                            @"$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{1})(\\d{4})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"[2-478]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"AU", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-9]\\d{8}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-9]\\d{8}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"(?:5[01]|6[069]|7[289]|88)\\d{7}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"800\\d{6}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"70\\d{7}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"PL", [NSNumber numberWithLongLong:48], 
                    @"00", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{3})(\\d{2})(\\d{2})", 
                            @"$1 $2 $3 $4", 
                            [NSNull null], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"PL", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-7]\\d{3,9}|8\\d{8}", 
                        @"\\d{4,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"(?:2|[34][1-3]|5[1-5]|6[1-4])(?:1\\d{2,3}|[2-9]\\d{6,7})", 
                        @"\\d{4,10}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"22123456", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"1[0-25-9]\\d{7,8}", 
                        @"\\d{9,10}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"1023456789", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"80\\d{7}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"801234567", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"60[2-9]\\d{6}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"602345678", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"50\\d{8}", 
                        @"\\d{10}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"5012345678", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"70\\d{8}", 
                        @"\\d{10}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"7012345678", nil], 
                    @"KR", [NSNumber numberWithLongLong:82], 
                    @"00(?:[124-68]|[37]\\d{2})", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0(8[1-46-8]|85\\d{2})?", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4})(\\d{4})", 
                            @"$1-$2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"1(?:0|1[19]|[69]9|5[458])|[57]0", 
                                @"1(?:0|1[19]|[69]9|5(?:44|59|8))|[57]0", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{3})(\\d{4})", 
                            @"$1-$2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"1(?:[169][2-8]|[78]|5[1-4])|[68]0|[3-6][1-9][2-9]", 
                                @"1(?:[169][2-8]|[78]|5(?:[1-3]|4[56]))|[68]0|[3-6][1-9][2-9]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d)(\\d{4})", 
                            @"$1-$2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"131", 
                                @"1312", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{2})(\\d{4})", 
                            @"$1-$2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"131", 
                                @"131[13-9]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1-$2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"13[2-9]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{2})(\\d{3})(\\d{4})", 
                            @"$1-$2-$3-$4", 
                            [[NSArray alloc] initWithObjects:
                                @"30", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d)(\\d{4})(\\d{4})", 
                            @"$1-$2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"2(?:[26]|3[0-467])", 
                                @"2(?:[26]|3(?:01|1[45]|2[17-9]|39|4|6[67]|7[078]))", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d)(\\d{3})(\\d{4})", 
                            @"$1-$2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"2(?:3[0-35-9]|[457-9])", 
                                @"2(?:3(?:0[02-9]|1[0-36-9]|2[02-6]|3[0-8]|6[0-589]|7[1-69]|[589])|[457-9])", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d)(\\d{3})", 
                            @"$1-$2", 
                            [[NSArray alloc] initWithObjects:
                                @"21[0-46-9]", 
                                @"21(?:[0-247-9]|3[124]|6[1269])", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d)(\\d{4})", 
                            @"$1-$2", 
                            [[NSArray alloc] initWithObjects:
                                @"21[36]", 
                                @"21(?:3[035-9]|6[03-578])", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{3})", 
                            @"$1-$2", 
                            [[NSArray alloc] initWithObjects:
                                @"[3-6][1-9]1", 
                                @"[3-6][1-9]1(?:[0-46-9])", 
                                @"[3-6][1-9]1(?:[0-247-9]|3[124]|6[1269])", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4})", 
                            @"$1-$2", 
                            [[NSArray alloc] initWithObjects:
                                @"[3-6][1-9]1", 
                                @"[3-6][1-9]1[36]", 
                                @"[3-6][1-9]1(?:3[035-9]|6[03-578])", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"KR", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"\\d{4,14}", 
                        @"\\d{2,14}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"(?:[24-6]\\d{2}|3[03-9]\\d|[789](?:[1-9]\\d|0[2-9]))\\d{1,8}", 
                        @"\\d{2,14}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"30123456", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"1(5\\d{9}|7\\d{8}|6[02]\\d{8}|63\\d{7})", 
                        @"\\d{10,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"800\\d{7}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"900([135]\\d{6}|9\\d{7})", 
                        @"\\d{10,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"DE", [NSNumber numberWithLongLong:49], 
                    @"00", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3,8})", 
                            @"$1 $2", 
                            [[NSArray alloc] initWithObjects:
                                @"2|3[3-9]|906|[4-9][1-9]1", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4,9})", 
                            @"$1/$2", 
                            [[NSArray alloc] initWithObjects:
                                @"[34]0|[68]9", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"([4-9]\\d)(\\d{2})", 
                            @"$1 $2", 
                            [[NSArray alloc] initWithObjects:
                                @"[4-9]", 
                                @"[4-6]|[7-9](?:\\d[1-9]|[1-9]\\d)", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"([4-9]\\d{3})(\\d{2,7})", 
                            @"$1 $2", 
                            [[NSArray alloc] initWithObjects:
                                @"[4-9]", 
                                @"[4-6]|[7-9](?:\\d[1-9]|[1-9]\\d)", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{1})(\\d{6})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"800", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3,4})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"900", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"DE", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"(242|8(00|66|77|88)|900)\\d{7}", 
                        @"\\d{7,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"242(?:3(?:02|[236][1-9]|4[0-24-9]|5[0-68]|7[3-57]|9[2-5])|4(?:2[237]|51|64|77)|502|636|702)\\d{4}", 
                        @"\\d{7,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"242(357|359|457|557)\\d{4}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"8(00|66|77|88)\\d{7}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"900\\d{7}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"BS", [NSNumber numberWithLongLong:1], 
                    @"011", 
                    @"1", 
                    [NSNull null], 
                    [NSNull null], 
                    @"1", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"BS", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[289]\\d{7,9}|[3-7]\\d{7}", 
                        @"\\d{7,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"24099\\d{3}|(?:3[2-79]|[479][2-689]|6[235-9])\\d{6}", 
                        @"\\d{7,8}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"2(?:[027]\\d{7}|9\\d{6,7}|1(?:0\\d{5,7}|[12]\\d{5,6}|[3-9]\\d{5})|4[1-9]\\d{6}|8\\d{7,8})", 
                        @"\\d{8,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"800\\d{6,7}", 
                        @"\\d{9,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"900\\d{6,7}", 
                        @"\\d{9,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"NZ", [NSNumber numberWithLongLong:64], 
                    @"00", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d)(\\d{3})(\\d{4})", 
                            @"$1-$2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"24|[34679]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d)(\\d{3})(\\d{3,5})", 
                            @"$1-$2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"2[179]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{3,4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"[89]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"NZ", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[268]\\d{8}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"2696[0-4]\\d{4}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"269601234", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"639\\d{6}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"639123456", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"80\\d{7}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"801234567", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"YT", [NSNumber numberWithLongLong:262], 
                    @"00", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    @"269|639", 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"YT", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[29]\\d{8}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"2\\d(?:[26-9]\\d|\\d[26-9])\\d{5}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"222123456", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"9[1-3]\\d{7}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"923123456", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"AO", [NSNumber numberWithLongLong:244], 
                    @"00", 
                    @"0~0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0~0", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{3})", 
                            @"$1 $2 $3", 
                            [NSNull null], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"AO", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"\\d{8}", 
                        @"\\d{8}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"12345678", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", 
                        [NSNull null], 
                        [NSNull null], 
                        @"12345678", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", 
                        [NSNull null], 
                        [NSNull null], 
                        @"12345678", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"\\d{8}", 
                        @"\\d{8}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"12345678", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"001", [NSNumber numberWithLongLong:800], 
                    @"", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], [NSNumber numberWithLongLong:1], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})(\\d{4})", 
                            @"$1 $2", 
                            [NSNull null], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], [NSNumber numberWithLongLong:1], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"800", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[13689]\\d{7,10}", 
                        @"\\d{8}|\\d{10,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[36]\\d{7}", 
                        @"\\d{8}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[89]\\d{7}", 
                        @"\\d{8}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"1?800\\d{7}", 
                        @"\\d{10,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"1900\\d{7}", 
                        @"\\d{11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"SG", [NSNumber numberWithLongLong:65], 
                    @"0[0-3][0-9]", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    @"777777", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})(\\d{4})", 
                            @"$1 $2", 
                            [[NSArray alloc] initWithObjects:
                                @"[369]|8[1-9]", nil], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"1[89]", nil], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"800", nil], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"SG", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"07\\d{5}|[1-357-9]\\d{3,10}", 
                        @"\\d{4,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"07\\d{5}|[1-357-9]\\d{3,10}", 
                        @"\\d{4,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"07\\d{5}|[1-357-9]\\d{3,10}", 
                        @"\\d{4,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"0777[01]\\d{2}", 
                        @"\\d{7}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"0777012", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"JP", [NSNumber numberWithLongLong:81], 
                    @"010", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], [NSNumber numberWithLongLong:1], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"[57-9]0", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{2})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3 $4", 
                            [[NSArray alloc] initWithObjects:
                                @"[57-9]0", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"111|222|333", 
                                @"(?:111|222|333)1", 
                                @"(?:111|222|333)11", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})(\\d)(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"222|333", 
                                @"2221|3332", 
                                @"22212|3332", 
                                @"222120|3332", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{2})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"[23]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{4})", 
                            @"$1-$2", 
                            [[NSArray alloc] initWithObjects:
                                @"077", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})", 
                            @"*$1", 
                            [[NSArray alloc] initWithObjects:
                                @"[23]", nil], 
                            @"$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[23]\\d{3}", 
                        @"\\d{4}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], [NSNumber numberWithLongLong:1], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"JP", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-9]\\d{9,10}", 
                        @"\\d{7,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[2-9]\\d{9}", 
                        @"\\d{7,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"1\\d{10}", 
                        @"\\d{11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"800\\d{7}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"900\\d{7}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"MX", [NSNumber numberWithLongLong:52], 
                    @"00", 
                    @"01", 
                    [NSNull null], 
                    [NSNull null], 
                    @"01|04[45](\\d{10})", 
                    @"1$1", 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"[89]00", nil], 
                            @"01 $1", 
                            @"", [NSNumber numberWithLongLong:1], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"33|55|81", nil], 
                            @"01 $1", 
                            @"", [NSNumber numberWithLongLong:1], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"[2467]|3[0-24-9]|5[0-46-9]|8[2-9]|9[1-9]", nil], 
                            @"01 $1", 
                            @"", [NSNumber numberWithLongLong:1], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(1)(\\d{2})(\\d{4})(\\d{4})", 
                            @"045 $2 $3 $4", 
                            [[NSArray alloc] initWithObjects:
                                @"1(?:33|55|81)", nil], 
                            @"$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(1)(\\d{3})(\\d{3})(\\d{4})", 
                            @"045 $2 $3 $4", 
                            [[NSArray alloc] initWithObjects:
                                @"1(?:[124579]|3[0-24-9]|5[0-46-9]|8[02-9])", nil], 
                            @"$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"[89]00", 
                                @"[89]00", nil], 
                            @"01 $1", 
                            @"", [NSNumber numberWithLongLong:1], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"33|55|81", 
                                @"33|55|81", nil], 
                            @"01 $1", 
                            @"", [NSNumber numberWithLongLong:1], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"[2467]|3[0-24-9]|5[0-46-9]|8[2-9]|9[1-9]", 
                                @"[2467]|3[0-24-9]|5[0-46-9]|8[2-9]|9[1-9]", nil], 
                            @"01 $1", 
                            @"", [NSNumber numberWithLongLong:1], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(1)(\\d{2})(\\d{4})(\\d{4})", 
                            @"$1 $2 $3 $4", 
                            [[NSArray alloc] initWithObjects:
                                @"1(?:33|55|81)", nil], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(1)(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3 $4", 
                            [[NSArray alloc] initWithObjects:
                                @"1(?:[124579]|3[0-24-9]|5[0-46-9]|8[02-9])", nil], nil], nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"MX", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[13-689]\\d{9}|2[0-35-9]\\d{8}", 
                        @"\\d{7}(?:\\d{3})?", 
                        [NSNull null], 
                        [NSNull null], 
                        @"1234567890", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[13-689]\\d{9}|2[0-35-9]\\d{8}", 
                        @"\\d{7}(?:\\d{3})?", 
                        [NSNull null], 
                        [NSNull null], 
                        @"1234567890", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[13-689]\\d{9}|2[0-35-9]\\d{8}", 
                        @"\\d{7}(?:\\d{3})?", 
                        [NSNull null], 
                        [NSNull null], 
                        @"1234567890", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"8(?:00|66|77|88)\\d{7}", 
                        @"\\d{10}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"1234567890", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"900\\d{7}", 
                        @"\\d{10}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"1234567890", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"US", [NSNumber numberWithLongLong:1], 
                    @"011", 
                    @"1", 
                    @" extn. ", 
                    [NSNull null], 
                    @"1", 
                    [NSNull null], 
                    [NSNull null], [NSNumber numberWithLongLong:1], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{4})", 
                            @"$1 $2", 
                            [NSNull null], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:1], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [NSNull null], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:1], nil], nil], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [NSNull null], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:1], nil], nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], [NSNumber numberWithLongLong:1], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"800\\d{7}", 
                        @"\\d{10}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"1234567890", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"119|911", 
                        @"\\d{3}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"911", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"US", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[0389]\\d{5,10}", 
                        @"\\d{6,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"0\\d{9,10}", 
                        @"\\d{10,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"3\\d{8,9}", 
                        @"\\d{9,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"80(?:0\\d{6}|3\\d{3})", 
                        @"\\d{6,9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"89(?:2\\d{3}|9\\d{6})", 
                        @"\\d{6,9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"IT", [NSNumber numberWithLongLong:39], 
                    @"00", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"0[26]", nil], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{4})(\\d{3,4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"0[13-57-9]", nil], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{3,4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"3", nil], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3,6})", 
                            @"$1 $2", 
                            [[NSArray alloc] initWithObjects:
                                @"8", nil], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], [NSNumber numberWithLongLong:1], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"IT", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-3689]\\d{9,10}", 
                        @"\\d{6,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-3]\\d{9}", 
                        @"\\d{6,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"9\\d{10}|[1-3]\\d{9}", 
                        @"\\d{10,11}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"80\\d{8}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"6(0\\d|10)\\d{7}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"AR", [NSNumber numberWithLongLong:54], 
                    @"00", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0(?:(11|343|3715)15)?", 
                    @"9$1", 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4})(\\d{4})", 
                            @"$1 $2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"11", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})(\\d{2})(\\d{4})", 
                            @"$1 $2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"1[02-9]|[23]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(9)(11)(\\d{4})(\\d{4})", 
                            @"$2 15 $3-$4", 
                            [[NSArray alloc] initWithObjects:
                                @"911", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(9)(\\d{4})(\\d{2})(\\d{4})", 
                            @"$2 $3-$4", 
                            [[NSArray alloc] initWithObjects:
                                @"9(?:1[02-9]|[23])", nil], 
                            @"0$1", 
                            @"0$1 $CC", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1-$2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"[68]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4})(\\d{4})", 
                            @"$1 $2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"11", 
                                @"11", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})(\\d{2})(\\d{4})", 
                            @"$1 $2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"1[02-9]|[23]", 
                                @"1[02-9]|[23]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(9)(11)(\\d{4})(\\d{4})", 
                            @"$1 $2 $3 $4", 
                            [[NSArray alloc] initWithObjects:
                                @"911", nil], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(9)(\\d{4})(\\d{2})(\\d{4})", 
                            @"$1 $2 $3 $4", 
                            [[NSArray alloc] initWithObjects:
                                @"9(?:1[02-9]|[23])", nil], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1-$2-$3", 
                            [[NSArray alloc] initWithObjects:
                                @"[68]", 
                                @"[68]", nil], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"AR", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"\\d{9}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"123456789", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", 
                        [NSNull null], 
                        [NSNull null], 
                        @"123456789", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", 
                        [NSNull null], 
                        [NSNull null], 
                        @"123456789", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"\\d{9}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"123456789", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"001", [NSNumber numberWithLongLong:979], 
                    @"", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], [NSNumber numberWithLongLong:1], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d)(\\d{4})(\\d{4})", 
                            @"$1 $2 $3", 
                            [NSNull null], 
                            @"", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"979", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"\\d{10}", 
                        @"\\d{6,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-6]\\d{9}", 
                        @"\\d{6,10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"7[1-57-9]\\d{8}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"80\\d{8}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"9[018]\\d{8}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"8(?:4[3-5]|7[0-2])\\d{7}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"70\\d{8}", 
                        @"\\d{10}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"56\\d{8}", 
                        @"\\d{10}", nil], 
                    @"GB", [NSNumber numberWithLongLong:44], 
                    @"00", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{4})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"[1-59]|[78]0", nil], 
                            @"(0$1)", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d)(\\d{3})(\\d{3})(\\d{3})", 
                            @"$1 $2 $3 $4", 
                            [[NSArray alloc] initWithObjects:
                                @"6", nil], 
                            @"(0$1)", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})(\\d{3})(\\d{3})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"7[1-57-9]", nil], 
                            @"(0$1)", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})(\\d{4})", 
                            @"$1 $2 $3", 
                            [[NSArray alloc] initWithObjects:
                                @"8[47]", nil], 
                            @"(0$1)", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"GB", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-9]\\d{5}", 
                        @"\\d{6}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-9]\\d{5}", 
                        @"\\d{6}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"112345", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[1-9]\\d{5}", 
                        @"\\d{6}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"BY", [NSNumber numberWithLongLong:375], 
                    @"810", 
                    @"8", 
                    [NSNull null], 
                    [NSNull null], 
                    @"80?|99999", 
                    [NSNull null], 
                    [NSNull null], [NSNumber numberWithLongLong:1], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{4})", 
                            @"$1", 
                            [[NSArray alloc] initWithObjects:
                                @"[1-8]", nil], 
                            @"8 $1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{2})(\\d{3})", 
                            @"$1 $2", 
                            [[NSArray alloc] initWithObjects:
                                @"[1-8]", nil], 
                            @"8$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], 
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"(\\d{3})(\\d{3})", 
                            @"$1 $2", 
                            [[NSArray alloc] initWithObjects:
                                @"[1-8]", nil], 
                            @"8 $1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"BY", 
                [[NSArray alloc] initWithObjects:
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"[268]\\d{8}", 
                        @"\\d{9}", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"262\\d{6}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"262161234", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"6(?:9[23]|47)\\d{6}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"692123456", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"80\\d{7}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"801234567", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"8(?:1[01]|2[0156]|84|9[0-37-9])\\d{6}", 
                        @"\\d{9}", 
                        [NSNull null], 
                        [NSNull null], 
                        @"810123456", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    @"RE", [NSNumber numberWithLongLong:262], 
                    @"00", 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    @"0", 
                    [NSNull null], 
                    [NSNull null], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [[NSArray alloc] initWithObjects:
                            [NSNull null], 
                            @"([268]\\d{2})(\\d{2})(\\d{2})(\\d{2})", 
                            @"$1 $2 $3 $4", 
                            [NSNull null], 
                            @"0$1", 
                            @"", [NSNumber numberWithLongLong:0], nil], nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    @"262|6(?:9[23]|47)|8", 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [NSNull null], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], 
                    [[NSArray alloc] initWithObjects:
                        [NSNull null], 
                        [NSNull null], 
                        @"NA", 
                        @"NA", nil], nil], @"RE", nil], @"countryToMetadata", 
            [[NSDictionary alloc] initWithObjectsAndKeys:
                [[NSArray alloc] initWithObjects:
                    @"AO", nil], @"244", 
                [[NSArray alloc] initWithObjects:
                    @"NZ", nil], @"64", 
                [[NSArray alloc] initWithObjects:
                    @"RE", 
                    @"YT", nil], @"262", 
                [[NSArray alloc] initWithObjects:
                    @"JP", nil], @"81", 
                [[NSArray alloc] initWithObjects:
                    @"PL", nil], @"48", 
                [[NSArray alloc] initWithObjects:
                    @"AR", nil], @"54", 
                [[NSArray alloc] initWithObjects:
                    @"SG", nil], @"65", 
                [[NSArray alloc] initWithObjects:
                    @"GB", nil], @"44", 
                [[NSArray alloc] initWithObjects:
                    @"KR", nil], @"82", 
                [[NSArray alloc] initWithObjects:
                    @"DE", nil], @"49", 
                [[NSArray alloc] initWithObjects:
                    @"BR", nil], @"55", 
                [[NSArray alloc] initWithObjects:
                    @"AU", nil], @"61", 
                [[NSArray alloc] initWithObjects:
                    @"IT", nil], @"39", 
                [[NSArray alloc] initWithObjects:
                    @"BY", nil], @"375", 
                [[NSArray alloc] initWithObjects:
                    @"AD", nil], @"376", 
                [[NSArray alloc] initWithObjects:
                    @"001", nil], @"800", 
                [[NSArray alloc] initWithObjects:
                    @"001", nil], @"979", 
                [[NSArray alloc] initWithObjects:
                    @"US", 
                    @"BS", nil], @"1", 
                [[NSArray alloc] initWithObjects:
                    @"MX", nil], @"52", nil], @"countryCodeToRegionCodeMap", nil];
}


@end
