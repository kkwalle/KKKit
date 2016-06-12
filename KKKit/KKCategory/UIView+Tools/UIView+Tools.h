//
//  UIView+Tools.h
//  KKKit
//
//  Created by kkwalle on 16/6/6.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Tools)
/* ---- 设置圆角 ---- */
- (void)setCornerRadiusForRectCorner:(UIRectCorner)corners withCornerRadius:(CGSize)cornerRadius;
/* ---- 设置圆角边框 ---- */
- (void)setCornerRadius:(CGFloat)cornerRadius
            borderColor:(UIColor *)borderColor
            borderWidth:(CGFloat)borderWidth;

/* 快捷获取, 设置属性 */
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic, assign) CGSize size;

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;

/* 快捷计算布局 */
@property (nonatomic, assign) CGFloat top;
@property (nonatomic, assign) CGFloat left;
@property (nonatomic, assign) CGFloat bottom;
@property (nonatomic, assign) CGFloat right;

/* ---- 快捷布局 ---- */

/* ---- left, right, top, bottom ---- */
- (void)setLeft:(CGFloat)left toRight:(CGFloat)toRight top:(CGFloat)top bottom:(CGFloat)bottom;

/* ---- left, right, top, height ---- */
- (void)setLeft:(CGFloat)left toRight:(CGFloat)toRight top:(CGFloat)top height:(CGFloat)height;

@end
