//
//  UITextField+Tools.h
//  KKKit
//
//  Created by kkwalle on 16/6/8.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Tools)

//设置 text 大小颜色
- (void)setTextFont:(UIFont *)textFont
          textColor:(UIColor *)textColor
        borderStyle:(UITextBorderStyle)borderStyle;

//设置 placeholder 大小颜色
- (void)setAttPlaceholder:(NSString *)placeholder
                 TextFont:(UIFont *)textFont
                textColor:(UIColor *)textColor;

@end
