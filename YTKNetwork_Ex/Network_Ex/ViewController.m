//
//  ViewController.m
//  Network_Ex
//
//  Created by Plum on 2018/3/31.
//  Copyright © 2018年 Plum. All rights reserved.
//

#import "ViewController.h"
#import <YTKNetwork.h>
#import "MyYTKRequest.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    YTKNetworkConfig *config = [YTKNetworkConfig sharedConfig];
    config.baseUrl = @"http://api.juheapi.com";
//    CFStringRef re = CFSTR("hshdhfh");
//    NSString *d = (__bridge NSString *)re;
//    CFStringRef dsf = (__bridge CFStringRef)d;;
}

- (IBAction)fetchDate:(id)sender {
    MyYTKRequest *request = [MyYTKRequest new];
    if ([request loadCacheWithError:nil]) {
        NSDictionary *dic = request.responseJSONObject;
        NSLog(@"");
        return;
    }
    [request startWithCompletionBlockWithSuccess:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"");
    } failure:^(__kindof YTKBaseRequest * _Nonnull request) {
        NSLog(@"");
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
