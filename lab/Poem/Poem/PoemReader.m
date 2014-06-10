//
//  PoemReader.m
//  Poem
//
//  Created by Lanston Peng on 6/2/14.
//  Copyright (c) 2014 Vtm. All rights reserved.
//

#import "PoemReader.h"

@implementation PoemReader

+ (instancetype)sharedPoemReader
{
    static PoemReader* instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [PoemReader new];
    });
    return instance;
}
-(NSDictionary*)getRandomPoemReader
{
    return @{};
}
-(NSArray*)getAllPoems
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"poemdata" ofType:@"json"];
    NSData *data = [NSData dataWithContentsOfFile:filePath];
    NSArray *json = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    return json;
}
-(NSDictionary*)getPoemByID
{
    return @{};
}
@end