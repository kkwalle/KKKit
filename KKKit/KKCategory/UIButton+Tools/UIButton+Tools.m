//
//  UIButton+Tools.m
//  KKKit
//
//  Created by kkwalle on 16/6/6.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import "UIButton+Tools.h"
#import "UIImage+Tools.h"

@implementation UIButton (Tools)

//设置各属性, StateNormal
- (void)setNorBgColor:(UIColor *)bgColor
                Title:(NSString *)title
            titleFont:(UIFont *)titleFont
           titleColor:(UIColor *)titleColor {
    //
    [self setBackgroundColor:bgColor forState:UIControlStateNormal];
    [self setTitle:title forState:UIControlStateNormal];
    [self.titleLabel setFont:titleFont];
    [self setTitleColor:titleColor forState:UIControlStateNormal];
}

//快捷设置目标方法, TouchUpInside
- (void)setTarget:(id)target action:(SEL)action {
    [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
}

//设置不同状态背景颜色
- (void)setBackgroundColor:(UIColor *)color forState:(UIControlState)state {
    [self setBackgroundImage:[UIImage imageWithColor:color] forState:state];
}

@end
