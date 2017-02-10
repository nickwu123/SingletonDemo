//
//  TestSingleton.m
//  SingletonDemo
//
//  Created by Nick wu on 2/10/17.
//  Copyright © 2017 Nick. All rights reserved.
//

#import "TestSingleton.h"

@implementation TestSingleton
static id _instance = nil;
+ (instancetype)sharedSingleton
{
    return [[self alloc] init];
}
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super allocWithZone:zone];
    });
    return _instance;
}
- (instancetype)init
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _instance = [super init];
    });
    return _instance;
}
//在使用copy 方法 的时候会调用copyWithZone
- (id)copyWithZone:(NSZone*)zone
{
    return _instance;
}
+ (id)copyWithZone:(struct _NSZone*)zone
{
    return _instance;
}
- (id)mutableCopyWithZone:(NSZone*)zone
{
    return _instance;
}
+ (id)mutableCopyWithZone:(struct _NSZone*)zone
{
    return _instance;
}
@end
