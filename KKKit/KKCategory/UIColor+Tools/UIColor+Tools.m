//
//  UIColor+Tools.m
//  KKKit
//
//  Created by kkwalle on 16/6/6.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import "UIColor+Tools.h"

@implementation UIColor (Tools)

//十六进制转 UIColor, 例如 0xffffff, #ffffff
+(UIColor *)colorWithHexColorString:(NSString *)hexColorString{
    if ([hexColorString length] <6){//长度不合法
        return [UIColor blackColor];
    }
    NSString *tempString=[hexColorString lowercaseString];
    if ([tempString hasPrefix:@"0x"]){//检查开头是0x
        tempString = [tempString substringFromIndex:2];
    }else if ([tempString hasPrefix:@"#"]){//检查开头是#
        tempString = [tempString substringFromIndex:1];
    }
    if ([tempString length] !=6){
        return [UIColor blackColor];
    }
    //分解三种颜色的值
    NSRange range;
    range.location =0;
    range.length =2;
    NSString *rString = [tempString substringWithRange:range];
    range.location =2;
    NSString *gString = [tempString substringWithRange:range];
    range.location =4;
    NSString *bString = [tempString substringWithRange:range];
    //取三种颜色值
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString]scanHexInt:&r];
    [[NSScanner scannerWithString:gString]scanHexInt:&g];
    [[NSScanner scannerWithString:bString]scanHexInt:&b];
    return [UIColor colorWithRed:((float) r /255.0f)
                           green:((float) g /255.0f)
                            blue:((float) b /255.0f)
                           alpha:1.0f];
}

+ (UIColor *)colorWithR:(NSInteger)R G:(NSInteger)G B:(NSInteger)B {
    return [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:1.0];
}

+ (UIColor *)colorWithWhite:(NSInteger)white {
    return [UIColor colorWithWhite:white/255.0 alpha:1.0];
}

@end
