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

//字体大小颜色
- (void)setTitle:(NSString *)title titleFont:(UIFont *)titleFont titleColor:(UIColor *)titleColor {
    [self setTitle:title forState:UIControlStateNormal];
    [self.titleLabel setFont:titleFont];
    [self setTitleColor:titleColor forState:UIControlStateNormal];
}

//设置各属性, forState
- (void)setBgColor:(UIColor *)bgColor
             Title:(NSString *)title
         titleFont:(UIFont *)titleFont
        titleColor:(UIColor *)titleColor
          forState:(UIControlState)state {
    //
    [self setBackgroundColor:bgColor forState:state];
    [self setTitle:title forState:state];
    [self.titleLabel setFont:titleFont];
    [self setTitleColor:titleColor forState:state];
}

//设置不同状态背景颜色
- (void)setBackgroundColor:(UIColor *)color forState:(UIControlState)state {
    [self setBackgroundImage:[UIImage imageWithColor:color] forState:state];
}

//不同状态图片
- (void)setNorImage:(UIImage *)norImage selImage:(UIImage *)selImage {
    [self setImage:norImage forState:UIControlStateNormal];
    [self setImage:selImage forState:UIControlStateSelected];
}

@end
