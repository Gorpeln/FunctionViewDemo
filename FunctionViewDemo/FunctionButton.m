//
//  ButtonAddtion.m
//  FunctionViewDemo
//
//  Created by chen on 2015/12/8.
//  Copyright © 2015年 Gorpeln. All rights reserved.
//


#import "FunctionButton.h"

@implementation FunctionButton

-(instancetype)initWithFrame:(CGRect)frame{
    
    if (self == [super initWithFrame:frame]) {
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        [self setTitleColor:RGBCOLOR(55.0, 55.0, 75.0) forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont fontWithName:@"heiti SC" size:12.0];
    }
    return self;
}

-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    CGRect frame = contentRect;
    frame.size.width = contentRect.size.height /2;
    frame.size.height = contentRect.size.height /2;
    frame.origin.x = contentRect.size.width /4;
    frame.origin.y = contentRect.size.width /8;
    return frame;
}

-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    
    CGRect frame = contentRect;
    frame.size.width = contentRect.size.width;
    frame.size.height = contentRect.size.width /3 - contentRect.size.width /8;
    frame.origin.x = 0;
    frame.origin.y = contentRect.size.height /3 *2;
    return frame;
}

@end
