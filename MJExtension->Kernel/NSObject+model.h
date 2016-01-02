//
//  NSObject+model.h
//  MJExtension->Kernel
//
//  Created by apple on 16/1/2.
//  Copyright © 2016年 LXJenn. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ModelDelegate <NSObject>

@optional

+ (NSDictionary *)arrayContainModelClass;

@end


@interface NSObject (model)

+ (instancetype)modelWithDict:(NSDictionary *)dict;

@end
