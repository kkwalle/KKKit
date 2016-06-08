//
//  UITextField+Tools.m
//  KKKit
//
//  Created by kkwalle on 16/6/8.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import "UITextField+Tools.h"

@implementation UITextField (Tools)

//设置 text 大小颜色
- (void)setTextFont:(UIFont *)textFont
          textColor:(UIColor *)textColor
        borderStyle:(UITextBorderStyle)borderStyle {
    //分别设置
    if (textFont) {
        self.font = textFont;
    }
    if (textColor) {
        self.textColor = textColor;
    }
    if (borderStyle) {
        self.borderStyle = borderStyle;
    }
}

//设置 placeholder 大小颜色
- (void)setAttPlaceholder:(NSString *)placeholder
                 TextFont:(UIFont *)textFont
                textColor:(UIColor *)textColor {
    //
    NSMutableAttributedString *mString = [[NSMutableAttributedString alloc] initWithString:placeholder];
    NSMutableDictionary *attDict = [NSMutableDictionary dictionary];
    if (textFont) {
        [attDict setObject:textFont forKey:NSFontAttributeName];
    }
    if (textColor) {
        [attDict setObject:textColor forKey:NSForegroundColorAttributeName];
    }
    [mString addAttributes:attDict range:NSMakeRange(0, mString.length)];
    self.attributedPlaceholder = mString;
}

@end
