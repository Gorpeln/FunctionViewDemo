//
//  FunctionView.h
//  FunctionViewDemo
//
//  Created by chen on 2015/12/8.
//  Copyright © 2015年 Gorpeln. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol FunctionViewDelegate <NSObject>

@optional

- (void)goToFunctionModule:(int)moduleIndex;

@end

@interface FunctionView : UIView<FunctionViewDelegate>

@property (nonatomic, assign) id<FunctionViewDelegate>  delegate;

- (void)initFunctionViewWithTitleArray:(NSArray *)titleArray ImageArray:(NSArray *)imageArray;

@end

