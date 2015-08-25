//
//  AZFramerTests.m
//  AZFramerTests
//
//  Created by Abner Zhong on 08/25/2015.
//  Copyright (c) 2015 Abner Zhong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import <AZFramer/UIView+AZFramer.h>

SpecBegin(Frame)

__block UIView *view;
__block UIView *superView;

describe(@"postion", ^{
  before(^{
    view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    superView = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 1000, 1000)];
    [superView addSubview:view];
  });
  
  describe(@"Getter", ^{
  
    it(@"has right x", ^{
      expect(view.x).to.equal(view.frame.origin.x);
    });
    
    it(@"has right y", ^{
      expect(view.y).to.equal(view.frame.origin.y);
    });
    
    it(@"has right width", ^{
      expect(view.width).to.equal(view.frame.size.width);
    });
    
    it(@"has right height", ^{
      expect(view.height).to.equal(view.frame.size.height);
    });
    
    it(@"has right maxX", ^{
      expect(view.maxX).to.equal(CGRectGetMaxX(view.frame));
    });
    
    it(@"has right maxY", ^{
      expect(view.maxY).to.equal(CGRectGetMaxY(view.frame));
    });
    
    it(@"has right midX", ^{
      expect(view.midX).to.equal(view.center.x);
    });
    
    it(@"has right midY", ^{
      expect(view.midY).to.equal(view.center.y);
    });
    
    it(@"has right left", ^{
      expect(view.left).to.equal(view.frame.origin.x);
    });
    
    it(@"has right top", ^{
      expect(view.top).to.equal(view.y);
    });
    
    it(@"has right right", ^{
      expect(view.right).to.equal(view.maxX);
    });
    
    it(@"has right bottom", ^{
      expect(view.bottom).to.equal(view.maxY);
    });
  });
  
  describe(@"Setter", ^{
    it(@"has right x after seting x", ^{
      view.x = 300;
      expect(view.frame).to.equal(CGRectMake(300, 100, 100, 100));
    });
    
    it(@"has right y after setting y", ^{
      view.y = 300;
      expect(view.frame).to.equal(CGRectMake(100, 300, 100, 100));
    });
    
    it(@"has right width after setting width", ^{
      view.width = 300;
      expect(view.frame).to.equal(CGRectMake(100, 100, 300, 100));
    });
    
    it(@"has right height after setting height", ^{
      view.height = 300;
      expect(view.frame).to.equal(CGRectMake(100, 100, 100, 300));
    });
    
    it(@"has right frame after setting maxX", ^{
      view.maxX = 400;
      expect(view.frame).to.equal(CGRectMake(300, 100, 100, 100));
    });
    
    it(@"has right frame after setting maxY", ^{
      view.maxY = 400;
      expect(view.frame).to.equal(CGRectMake(100, 300, 100, 100));
    });
    
    it(@"has right center x after setting midX", ^{
      view.midX = 400;
      expect(view.center.x).to.equal(400);
    });
    
    it(@"has right center y after setting midY", ^{
      view.midY = 400;
      expect(view.center.y).to.equal(400);
    });
    
    it(@"has right frame after setting left", ^{
      view.left = 0;
      expect(view.frame).to.equal(CGRectMake(0, 100, 200, 100));
      
      view.left = 300;
      expect(view.frame).to.equal(CGRectMake(300, 100, 0, 100));
    });
    
    it(@"has right frame after setting top", ^{
      view.top = 0;
      expect(view.frame).to.equal(CGRectMake(100, 0, 100, 200));
      
      view.top = 300;
      expect(view.frame).to.equal(CGRectMake(100, 300, 100, 0));
    });
    
    it(@"has right frame after setting right", ^{
      view.right = 300;
      expect(view.frame).to.equal(CGRectMake(100, 100, 200, 100));
      
      view.right = 0;
      expect(view.frame).to.equal(CGRectMake(0, 100, 0, 100));
    });
    
    it(@"has right frame after setting bottom", ^{
      view.bottom = 300;
      expect(view.frame).to.equal(CGRectMake(100, 100, 100, 200));
      
      view.bottom = 0;
      expect(view.frame).to.equal(CGRectMake(100, 0, 100, 0));
    });
    
    it(@"is center in superview after makeCenter", ^{
      [view makeCenter];
      expect(view.center)
          .to.equal(CGPointMake(superView.frame.size.width / 2,
                                superView.frame.size.height / 2));
    });
    
    it(@"is horizantal center in superview after makeCenterX", ^{
      [view makeConterX];
      expect(view.center.x).to.equal(superView.frame.size.width / 2);
      
      [view makeCenterX:30];
      expect(view.center.x).to.equal(superView.frame.size.width / 2 + 30);
    });
    
    it(@"is vertical center in superview after makeCenterY", ^{
      [view makeCenterY];
      expect(view.center.y).to.equal(superView.frame.size.height / 2);
      
      [view makeCenterY:30];
      expect(view.center.y).to.equal(superView.frame.size.height / 2 + 30);
    });
  });
});

SpecEnd
