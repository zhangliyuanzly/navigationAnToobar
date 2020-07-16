//
//  VCRoot.m
//  导航栏和工具栏
//
//  Created by 张立远 on 2020/7/15.
//  Copyright © 2020 张立远. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor grayColor];
    
    //导航控制器的导航栏的风格颜色（依次）
    //UIBarStyleDefault：默认风格颜色
    //UIBarStyleBlack:半透明黑色
    //UIBarStyleDefault半透明白色
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    //将风格设置为不透明
    self.navigationController.navigationBar.translucent = NO;//translucent->半透明的
    
    //barTintColor:背景色(设置导航栏的风格颜色)
    //优先级最高，直接设为不透明的某颜色
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    
    //导航栏上的文字颜色(默认蓝色)
    //也就是改变导航栏元素项目按钮的风格颜色
    self.navigationController.navigationBar.tintColor = [UIColor blackColor];
    
    //隐藏导航栏
    //self.navigationController.navigationBar.hidden = YES;
    //同种功能
    //self.navigationController.navigationBarHidden = YES;
    
    self.title = @"根视图";
    
    //设置一个按钮
    UIBarButtonItem* btn = [[UIBarButtonItem alloc] initWithTitle:@"右侧按钮" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //navigationItem：导航项
    self.navigationItem.rightBarButtonItem = btn;
    
    //显示工具栏对象
    //默认的工具栏是隐藏的
    self.navigationController.toolbarHidden = NO;
    
    //将工具栏设置为不透明
    self.navigationController.toolbar.translucent = NO;
    
    //创建两个工具栏按钮
    
    //再设置一个按钮
    UIBarButtonItem* btn01 = [[UIBarButtonItem alloc] initWithTitle:@"left" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    //UIBarButtonSystemItemCamera:照相机按钮
    //当要加入事件时，在action里加入函数，在target里加入self
    UIBarButtonItem* btn02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(pressNext)];
    
    //固定宽度分割占位按钮
    //不响应事件，但是可以分割工具栏元素的排布
    UIBarButtonItem* btnF01 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    //设置占位按钮的大小
    btnF01.width = 100;
    
    //创建自动计算宽度按钮
    //根据自动计算宽度按钮的个数来排布自己设置的按钮
    UIBarButtonItem* btnF02 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    

    //按钮数组的创建
    NSArray* arrayBtns = [NSArray arrayWithObjects:btn01,btnF02, btn02, nil];
    
    self.toolbarItems = arrayBtns;
    
}

//创建好后加一个控制器VCSecond.h
-(void) pressNext {
    VCSecond* vc = [[VCSecond alloc] init];
    
    [self.navigationController pushViewController:vc animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
