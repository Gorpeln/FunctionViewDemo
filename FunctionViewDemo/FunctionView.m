//
//  FunctionView.m
//  FunctionViewDemo
//
//  Created by chen on 2015/12/8.
//  Copyright © 2015年 Gorpeln. All rights reserved.
//

#import "FunctionView.h"
#import "FunctionButton.h"

#define itemWidth            BOUNDS_WIDTH /numberOfRow


@interface FunctionView()

@end

@implementation FunctionView

- (void)initFunctionViewWithTitleArray:(NSArray *)titleArray ImageArray:(NSArray *)imageArray{
    
    for (int j = 0; j < titleArray.count; j ++){
        CGFloat height = 0;
        if(j > numberOfRow -1){
            height = itemWidth *(j /numberOfRow);
        }
     
        FunctionButton *itemBtn = [[FunctionButton alloc] initWithFrame:CGRectMake(j % numberOfRow * itemWidth , height, itemWidth, itemWidth)];
        itemBtn.tag = j;
        [itemBtn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@",imageArray[j]]] forState:UIControlStateNormal];
        [itemBtn setTitle:titleArray[j] forState:UIControlStateNormal];
        [itemBtn addTarget:self action:@selector(itemBtnAction:)    forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:itemBtn];

    }
}

- (void)itemBtnAction:(id)sender{
    UIButton *btn = (UIButton *)sender;
    if (_delegate && [_delegate respondsToSelector:@selector(goToFunctionModule:)]) {
        [_delegate goToFunctionModule:(int)btn.tag];
    }
}

- (void)imageExViewDidOk:(UIImageView *)imageViewEx{
    if (_delegate && [_delegate respondsToSelector:@selector(goToFunctionModule:)]) {
        [_delegate goToFunctionModule:(int)imageViewEx.tag];
    }
}

@end
