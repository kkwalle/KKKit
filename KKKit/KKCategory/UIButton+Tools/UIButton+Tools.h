//
//  UIButton+Tools.h
//  KKKit
//
//  Created by kkwalle on 16/6/6.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Tools)

//字体大小颜色, normal 状态下
- (void)setTitle:(nullable NSString *)title titleFont:(nullable UIFont *)titleFont titleColor:(nullable UIColor *)titleColor;
//不同状态图片
- (void)setNorImage:(nullable UIImage *)norImage selImage:(nullable UIImage *)selImage;

//设置各属性, forState
- (void)setBgColor:(nullable UIColor *)bgColor
             Title:(nullable NSString *)title
         titleFont:(nullable UIFont *)titleFont
        titleColor:(nullable UIColor *)titleColor
          forState:(UIControlState)state;


//设置不同状态背景颜色
- (void)setBackgroundColor:(nullable UIColor *)color forState:(UIControlState)state;

@end
