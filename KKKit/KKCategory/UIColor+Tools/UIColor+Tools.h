//
//  UIColor+Tools.h
//  KKKit
//
//  Created by kkwalle on 16/6/6.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (Tools)

//十六进制转 UIColor, 例如 0xffffff, #ffffff
+ (UIColor *)colorWithHexColorString:(NSString *)hexColorString;

+ (UIColor *)colorWithWhite:(NSInteger)white;
+ (UIColor *)colorWithR:(NSInteger)R G:(NSInteger)G B:(NSInteger)B;

@end
