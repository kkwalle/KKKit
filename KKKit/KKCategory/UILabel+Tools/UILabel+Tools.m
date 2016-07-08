//
//  UILabel+Tools.m
//  KKKit
//
//  Created by kkwalle on 16/6/7.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import "UILabel+Tools.h"

@implementation UILabel (Tools)

/* ---- 设置各属性 ---- */
- (void)setText:(NSString *)text textFont:(UIFont *)textFont textColor:(UIColor *)textColor {
    [self setText:text];
    [self setFont:textFont];
    [self setTextColor:textColor];
}

- (void)setBgColor:(UIColor *)bgColor
              Text:(NSString *)text
          textFont:(UIFont *)textFont
         textColor:(UIColor *)textColor
     textAlignment:(NSTextAlignment)textAlignment {
    //----
    [self setBackgroundColor:bgColor];
    [self setText:text];
    [self setFont:textFont];
    [self setTextColor:textColor];
    [self setTextAlignment:textAlignment];
}

/* ---- 富文本字符串, 视连接部分为高亮部分, 分隔部分为基础部分 ---- */
- (void)setAttributesText:(NSString *)text
             highTextFont:(UIFont *)highTextFont
            highTextColor:(UIColor *)highTextColor
            highTextRange:(NSRange)highTextRange
             baseTextFont:(UIFont *)baseTextFont
            baseTextColor:(UIColor *)baseTextColor {
    
    //基础部分属性设置
    NSMutableAttributedString *textString = [[NSMutableAttributedString alloc] initWithString:text];
    NSDictionary *baseAttDict = @{NSFontAttributeName : baseTextFont,
                                  NSForegroundColorAttributeName : baseTextColor};
    [textString addAttributes:baseAttDict range:NSMakeRange(0, textString.length)];
    
    //高亮部分属性设置
    NSDictionary *highAttDict = @{NSFontAttributeName : highTextFont,
                                  NSForegroundColorAttributeName : highTextColor};
    [textString addAttributes:highAttDict range:highTextRange];
    
    self.attributedText = textString;
}

@end
