//
//  UIView+AZFramer.m
//  Pods
//
//  Created by 钟建明 on 15/8/25.
//
//

#import "UIView+AZFramer.h"

@implementation UIView (AZFramer)

- (CGFloat)x {
  return self.frame.origin.x;
}

- (void)setX:(CGFloat)x {
  CGRect frame = self.frame;
  frame.origin.x = x;
  self.frame = frame;
}

- (CGFloat)y {
  return self.frame.origin.y;
}

- (void)setY:(CGFloat)y {
  CGRect frame = self.frame;
  frame.origin.y = y;
  self.frame = frame;
}

- (CGFloat)width {
  return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width {
  CGRect frame = self.frame;
  frame.size.width = width;
  self.frame = frame;
}

- (CGFloat)height {
  return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height {
  CGRect frame = self.frame;
  frame.size.height = height;
  self.frame = frame;
}

- (CGFloat)maxX {
  return CGRectGetMaxX(self.frame);
}

- (void)setMaxX:(CGFloat)maxX {
  CGRect frame = self.frame;
  frame.origin.x = maxX - frame.size.width;
  self.frame = frame;
}

- (CGFloat)maxY {
  return CGRectGetMaxY(self.frame);
}

- (void)setMaxY:(CGFloat)maxY {
  CGRect frame = self.frame;
  frame.origin.y = maxY - frame.size.height;
  self.frame = frame;
}

- (CGFloat)midX {
  return self.center.x;
}

- (void)setMidX:(CGFloat)midX {
  CGPoint center = self.center;
  center.x = midX;
  self.center = center;
}

- (CGFloat)midY {
  return self.center.y;
}

- (void)setMidY:(CGFloat)midY {
  CGPoint center = self.center;
  center.y = midY;
  self.center = center;
}

- (CGFloat)left {
  return self.x;
}

- (void)setLeft:(CGFloat)left {
  self.width = MAX(0, self.maxX - left);
  self.x = left;
}

- (CGFloat)top {
  return self.y;
}

- (void)setTop:(CGFloat)top {
  self.height = MAX(0, self.maxY - top);
  self.y = top;
}

- (CGFloat)right {
  return self.maxX;
}

- (void)setRight:(CGFloat)right {
  self.width = MAX(0, right - self.x);
  if (right < self.x) {
    self.x = right;
  }
}

- (CGFloat)bottom {
  return self.maxY;
}

- (void)setBottom:(CGFloat)bottom {
  self.height = MAX(0, bottom - self.y);
  if (bottom < self.y) {
    self.y = bottom;
  }
}

- (void)makeCenter {
  self.center = CGPointMake(self.superview.width / 2, self.superview.height / 2);
}

- (void)makeCenterX:(CGFloat)offset {
  self.midX = self.superview.width / 2 + offset;
}

- (void)makeConterX {
  [self makeCenterX:0];
}

- (void)makeCenterY:(CGFloat)offset {
  self.midY = self.superview.height / 2 + offset;
}

- (void)makeCenterY {
  [self makeCenterY:0];
}

@end
