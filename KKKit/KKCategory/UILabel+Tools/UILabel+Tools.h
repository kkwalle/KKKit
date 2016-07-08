//
//  UILabel+Tools.h
//  KKKit
//
//  Created by kkwalle on 16/6/7.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Tools)

/* ---- 设置各属性 ---- */
- (void)setText:(NSString *)text textFont:(UIFont *)textFont textColor:(UIColor *)textColor;

- (void)setBgColor:(UIColor *)bgColor
              Text:(NSString *)text
          textFont:(UIFont *)textFont
         textColor:(UIColor *)textColor
     textAlignment:(NSTextAlignment)textAlignment;


/* ---- 富文本字符串, 视连接部分为高亮部分, 分隔部分为基础部分 ---- */
- (void)setAttributesText:(NSString *)text
             highTextFont:(UIFont *)highTextFont
            highTextColor:(UIColor *)highTextColor
            highTextRange:(NSRange)highTextRange
             baseTextFont:(UIFont *)baseTextFont
            baseTextColor:(UIColor *)baseTextColor;

@end
