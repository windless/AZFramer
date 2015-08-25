//
//  UIView+AZFramer.h
//  Pods
//
//  Created by 钟建明 on 15/8/25.
//
//

#import <UIKit/UIKit.h>

@interface UIView (AZFramer)

@property(nonatomic, assign) CGFloat x;
@property(nonatomic, assign) CGFloat y;
@property(nonatomic, assign) CGFloat width;
@property(nonatomic, assign) CGFloat height;
@property(nonatomic, assign) CGFloat maxX;
@property(nonatomic, assign) CGFloat maxY;
@property(nonatomic, assign) CGFloat midX;
@property(nonatomic, assign) CGFloat midY;
@property(nonatomic, assign) CGFloat left;
@property(nonatomic, assign) CGFloat top;
@property(nonatomic, assign) CGFloat right;
@property(nonatomic, assign) CGFloat bottom;

- (void)makeCenter;
- (void)makeCenterX:(CGFloat)offset;
- (void)makeConterX;
- (void)makeCenterY:(CGFloat)offset;
- (void)makeCenterY;

@end
