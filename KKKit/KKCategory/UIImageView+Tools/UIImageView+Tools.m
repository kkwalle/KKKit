//
//  UIImageView+Tools.m
//  KKKit
//
//  Created by kkwalle on 16/6/8.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import "UIImageView+Tools.h"

@implementation UIImageView (Tools)

//设置正常图片, 高亮图片
- (void)setNorImage:(UIImage *)norImage highImage:(UIImage *)highImage {
    [self setImage:norImage];
    [self setHighlightedImage:highImage];
}

@end
