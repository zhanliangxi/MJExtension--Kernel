//
//  StatusResult.h
//  MJExtension-Kernel
//
//  Created by 刘洪宝 on 15/11/25.
//  Copyright © 2015年 HB. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;

@interface StatusResult : NSObject

@property (strong, nonatomic) NSMutableArray *statuses;
@property (strong, nonatomic) NSArray *ads;
@property (strong, nonatomic) NSNumber *totalNumber;
@property (strong, nonatomic) User *user;

+ (NSDictionary *)arrayContainModelClass;
@end
