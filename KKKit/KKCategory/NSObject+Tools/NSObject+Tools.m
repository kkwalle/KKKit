//
//  NSObject+Tools.m
//  KKKit
//
//  Created by kkwalle on 16/7/18.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import "NSObject+Tools.h"
#import <objc/runtime.h>

static void *KKInfoPropertyKey = &KKInfoPropertyKey;

@implementation NSObject (Tools)

- (NSDictionary *)kkInfo {
    return objc_getAssociatedObject(self, KKInfoPropertyKey);
}

- (void)setKkInfo:(NSDictionary *)kkInfo {
    objc_setAssociatedObject(self, KKInfoPropertyKey, kkInfo, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
