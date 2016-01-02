//
//  StatusResult.m
//  MJExtension-Kernel
//
//  Created by 刘洪宝 on 15/11/25.
//  Copyright © 2015年 HB. All rights reserved.
//

#import "StatusResult.h"
#import "NSObject+Model.h"

@implementation StatusResult

+ (NSDictionary *)arrayContainModelClass
{
    return @{@"ads":@"Ad", @"statuses" : @"Status"};
}

@end
