//
//  ViewController.m
//  MJExtension->Kernel
//
//  Created by apple on 16/1/2.
//  Copyright © 2016年 LXJenn. All rights reserved.
//

#import "ViewController.h"
#import "NSObject+model.h"

#import "User.h"
#import "Status.h"
#import "Ad.h"
#import "StatusResult.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    //    NSDictionary *dict = @{
    //                           @"name" : @"Jack",
    //                           @"icon" : @"lufy.png",
    //                           @"age" : @20,
    //                           @"height" : @"1.55",
    //                           @"money" : @100.9,
    //                           @"sex" : @(SexFemale),
    //                           @"gay" : @"true"
    //                           };
    //
    //
    //
    //    User *user = [User modelWithDict:dict];
    //
    //    NSLog(@"name=%@, icon=%@, age=%zd, height=%@, money=%@, sex=%d, gay=%d", user.name, user.icon, user.age, user.height, user.money, user.sex, user.gay);
    
    //////////////////////////////////////////////////////////
    
    //    NSDictionary *dict1 = @{
    //                           @"text" : @"Agree!Nice weather!",
    //                           @"user" : @{
    //                                   @"name" : @"Jack",
    //                                   @"icon" : @"lufy.png"
    //                                   },
    //                           @"retweetedStatus" : @{
    //                                   @"text" : @"Nice weather!",
    //                                   @"user" : @{
    //                                           @"name" : @"Rose",
    //                                           @"icon" : @"nami.png"
    //                                           }
    //                                   }
    //                           };
    //
    //    Status *status = [Status modelWithDict:dict1];
    //    NSString *text = status.text;
    //    NSString *name = status.user.name;
    //    NSString *icon = status.user.icon;
    //    NSLog(@"text=%@, name=%@, icon=%@", text, name, icon);
    //
    //
    //    NSString *text2 = status.retweetedStatus.text;
    //    NSString *name2 = status.retweetedStatus.user.name;
    //    NSString *icon2 = status.retweetedStatus.user.icon;
    //    NSLog(@"text2=%@, name2=%@, icon2=%@", text2, name2, icon2);
    
    /////////////////////////////////////////////////////////
    //
    NSDictionary *dict3 = @{
                            @"statuses" : @[
                                    @{
                                        @"text" : @"Nice weather!",
                                        @"user" : @{
                                                @"name" : @"Rose",
                                                @"icon" : @"nami.png"
                                                }
                                        },
                                    @{
                                        @"text" : @"Go camping tomorrow!",
                                        @"user" : @{
                                                @"name" : @"Jack",
                                                @"icon" : @"lufy.png"
                                                }
                                        }
                                    ],
                            @"ads" : @[
                                    @{
                                        @"image" : @"ad01.png",
                                        @"url" : @"http://www.ad01.com"
                                        },
                                    @{
                                        @"image" : @"ad02.png",
                                        @"url" : @"http://www.ad02.com"
                                        }
                                    ],
                            @"totalNumber" : @"2014"
                            };
    
    
    StatusResult *result = [StatusResult modelWithDict:dict3];
    
    NSLog(@"totalNumber=%@", result.totalNumber);
    
    for (Status *status in result.statuses) {
        NSString *text = status.text;
        NSString *name = status.user.name;
        NSString *icon = status.user.icon;
        NSLog(@"text=%@, name=%@, icon=%@", text, name, icon);
    }
    
    for (Ad *ad in result.ads) {
        NSLog(@"image=%@, url=%@", ad.image, ad.url);
    }

    
}

@end
