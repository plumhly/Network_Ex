//
//  MyYTKRequest.m
//  Network_Ex
//
//  Created by Plum on 2018/3/31.
//  Copyright © 2018年 Plum. All rights reserved.
//

#import "MyYTKRequest.h"

@implementation MyYTKRequest

- (NSString *)requestUrl {
    return @"/japi/toh";
}

- (id)requestArgument {
    return @{
             @"key": @"e5fef8b83ad02196da8b8079cf19dcec",
             @"v": @"1.0",
             @"month": [NSNumber numberWithInteger:3],
             @"day": [NSNumber numberWithInteger:31]
             };
}

- (YTKRequestMethod)requestMethod {
    return YTKRequestMethodGET;
}


- (NSInteger)cacheTimeInSeconds {
    // 3 分钟 = 180 秒
    return 60 * 3;
}


@end
