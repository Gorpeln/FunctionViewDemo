//
//  ViewController.m
//  FunctionViewDemo
//
//  Created by chen on 2015/12/8.
//  Copyright © 2015年 Gorpeln. All rights reserved.
//

#import "ViewController.h"
#import "FunctionView.h"

@interface ViewController ()<FunctionViewDelegate>

@property (nonatomic, strong) FunctionView     *functionView; //功能view

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    self.view.backgroundColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1.0];
    [self.view addSubview:self.functionView];

}

#pragma mark--
#pragma mark--点击功能区 代理方法
//功能区views
- (FunctionView *)functionView{
    NSArray *titleArray=[NSArray arrayWithObjects:@"全部商品",@"十元专区",@"手机数码",@"电脑办公",@"影音数码",@"零食饮料",@"家用电器",@"游戏玩具", nil];
    NSArray *picArray=[NSArray arrayWithObjects:@"全部商品",@"10",@"手机平板",@"电脑办公",@"影音数码",@"零食饮料",@"家用电器",@"游戏玩具", nil];
    if (!_functionView) {
      
       int rowNumber = titleArray.count % numberOfRow ==0 ? (int)titleArray.count / numberOfRow : (int)titleArray.count / numberOfRow +1;
        _functionView = [[FunctionView alloc] initWithFrame:CGRectMake(0,100, BOUNDS_WIDTH, (BOUNDS_WIDTH /numberOfRow) * rowNumber)];
        _functionView.backgroundColor=[UIColor whiteColor];
        _functionView.delegate = self;
        [_functionView initFunctionViewWithTitleArray:titleArray ImageArray:picArray];
        
    }
    return _functionView;
}


- (void)goToFunctionModule:(int)moduleIndex
{
    DLog(@"您点击了功能区%d",moduleIndex);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
