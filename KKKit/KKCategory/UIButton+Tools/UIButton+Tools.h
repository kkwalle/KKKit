//
//  UIButton+Tools.h
//  KKKit
//
//  Created by kkwalle on 16/6/6.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Tools)

//设置目标方法, TouchUpInside
- (void)setTarget:(nullable id)target action:(nonnull SEL)action;

//设置各属性, forState
- (void)setBgColor:(nullable UIColor *)bgColor
             Title:(nullable NSString *)title
         titleFont:(nullable UIFont *)titleFont
        titleColor:(nullable UIColor *)titleColor
          forState:(UIControlState)state;


//设置不同状态背景颜色
- (void)setBackgroundColor:(nullable UIColor *)color forState:(UIControlState)state;

@end
