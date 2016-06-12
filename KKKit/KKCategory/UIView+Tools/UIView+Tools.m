//
//  UIView+Tools.m
//  KKKit
//
//  Created by kkwalle on 16/6/6.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import "UIView+Tools.h"

@implementation UIView (Tools)

#pragma mark - /* ------------ UI设置 ------------ */
/* ---- 设置缺角圆角 ---- */
- (void)setCornerRadiusForRectCorner:(UIRectCorner)corners withCornerRadius:(CGSize)cornerRadius {
    UIBezierPath *maskPath=  [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                   byRoundingCorners:corners
                                                         cornerRadii:cornerRadius];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
    self.layer.masksToBounds = YES;
}

/* ---- 设置圆角边框 ---- */
- (void)setCornerRadius:(CGFloat)cornerRadius
            borderColor:(UIColor *)borderColor
            borderWidth:(CGFloat)borderWidth {
    //分别设置
    self.clipsToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
    self.layer.borderColor = borderColor.CGColor;
    self.layer.borderWidth = borderWidth;
}


#pragma mark - /* ------------ 快捷设置 frame 属性, 快捷布局 ------------ */
/* ---- origin ---- */
- (CGPoint)origin {
    return self.frame.origin;
}

- (void)setOrigin:(CGPoint)origin {
    CGRect frame = self.frame;
    frame.origin = origin;
    self.frame = frame;
}

/* ---- size ---- */
- (CGSize)size {
    return self.frame.size;
}

- (void)setSize:(CGSize)size {
    CGRect frame = self.frame;
    frame.size = size;
    self.frame = frame;
}

/* ---- x ---- */
- (CGFloat)x {
    return self.frame.origin.x;
}

- (void)setX:(CGFloat)x {
    CGRect frame = self.frame;
    frame.origin.x = x;
    self.frame = frame;
}

/* ---- y ---- */
- (CGFloat)y {
    return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {
    CGRect frame = self.frame;
    frame.origin.y = y;
    self.frame = frame;
}

/* ---- width ---- */
- (CGFloat)width {
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
    CGRect frame = self.frame;
    frame.size.width = width;
    self.frame = frame;
}

/* ---- height ---- */
- (CGFloat)height {
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
    CGRect frame = self.frame;
    frame.size.height = height;
    self.frame = frame;
}



/* ---- top ---- */
- (CGFloat)top {
    return self.frame.origin.y;
}

- (void)setTop:(CGFloat)top {
    CGRect frame = self.frame;
    frame.origin.y = top;
    self.frame = frame;
}

/* ---- left ---- */
- (CGFloat)left {
    return self.frame.origin.x;
}

- (void)setLeft:(CGFloat)left {
    CGRect frame = self.frame;
    frame.origin.x = left;
    self.frame = frame;
}

/* ---- bottom ---- */
- (CGFloat)bottom {
    return CGRectGetMaxY(self.frame);
}

- (void)setBottom:(CGFloat)bottom {
    CGRect frame = self.frame;
    frame.origin.y = bottom - self.frame.size.height;
    self.frame = frame;
}

/* ---- right ---- */
- (CGFloat)right {
    return CGRectGetMaxX(self.frame);
}

- (void)setRight:(CGFloat)right {
    CGRect frame = self.frame;
    frame.origin.x = right - self.frame.size.width;
    self.frame = frame;
}

/* ---- 快捷布局 ---- */

/* ---- left, right, top, bottom ---- */
- (void)setLeft:(CGFloat)left toRight:(CGFloat)toRight top:(CGFloat)top bottom:(CGFloat)bottom {
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    self.frame = CGRectMake(left, top, screenW-toRight-left, bottom - top);
}

/* ---- left, right, top, height ---- */
- (void)setLeft:(CGFloat)left toRight:(CGFloat)toRight top:(CGFloat)top height:(CGFloat)height {
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    self.frame = CGRectMake(left, top, screenW-toRight-left, height);
}

@end
