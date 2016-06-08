//
//  UIImage+Tools.m
//  KKKit
//
//  Created by kkwalle on 16/6/7.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import "UIImage+Tools.h"

@implementation UIImage (Tools)

//根据颜色返回图片
+ (UIImage *)imageWithColor:(UIColor *)color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
