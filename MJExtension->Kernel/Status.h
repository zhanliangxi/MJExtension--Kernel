//
//  Status.h
//  MJExtension-Kernel
//
//  Created by 刘洪宝 on 15/11/25.
//  Copyright © 2015年 HB. All rights reserved.
//

#import <Foundation/Foundation.h>
@class User;

@interface Status : NSObject

@property (copy, nonatomic) NSString *text;
@property (strong, nonatomic) User *user;
@property (strong, nonatomic) Status *retweetedStatus;

@end
