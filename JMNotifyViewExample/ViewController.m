//
//  ViewController.m
//  JMNotifyView
//
//  Created by JM on 2019/1/11.
//  Copyright © 2019 JM. All rights reserved.
//

#import "ViewController.h"
#import "JMNotifyView.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"一行代码调用通知视图";
        
    //默认方法(一行代码调用)
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:@"默认一行代码调用" forState:UIControlStateNormal];
    btn.frame = CGRectMake(100, 140, 200, 50);
    btn.backgroundColor = [UIColor redColor];
    btn.tag = 66;
    [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    //自定义显示在哪个view上
    UIButton *btn1 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn1 setTitle:@"自定义显示在某个View上" forState:UIControlStateNormal];
    btn1.frame = CGRectMake(100, 220, 240, 50);
    btn1.backgroundColor = [UIColor redColor];
    btn1.tag = 666;
    [btn1 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn1];
    
    
    //自定义样式
    UIButton *btn2 = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn2 setTitle:@"自定义样式" forState:UIControlStateNormal];
    btn2.frame = CGRectMake(100, 300, 240, 50);
    btn2.backgroundColor = [UIColor redColor];
    btn2.tag = 6666;
    [btn2 addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn2];
    
    
    
    NSArray *titleArr = @[@"成功", @"失败", @"警告", @"信息"];
    for (int i = 0; i < titleArr.count; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn setTitle:titleArr[i] forState:UIControlStateNormal];
        btn.frame = CGRectMake((10 * i) + i * 80, 400, 80, 50);
        btn.backgroundColor = [UIColor redColor];
        btn.tag = i;
        [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
    
    
}

- (void)btnClick:(UIButton *)sender {
    
    if (sender.tag == 66) {
        //默认一行代码调用
        [JMNotifyView showNotify:@"您还未实名, 是否实名?"];
    } else if (sender.tag == 666) {
        //自定义显示在哪个view上
        [JMNotifyView showNotify:@"您还未实名, 是否实名?" showView:self.navigationController.view];
    } else if (sender.tag == 6666) {
        // 自定义配置
        JMNotifyViewConfig *config = [JMNotifyViewConfig defaultNotifyConfig];
        // 通知样式
        config.notifyStyle = JMNotifyViewStyleFill;
        // 自定义背景颜色
        config.backgroundColor = [UIColor orangeColor];
        // 自定义字体大小
        config.textSize = 16.f;
        // 自定义文字颜色
        config.textColor = [UIColor blackColor];
        // 自定义行间距
        config.textLineSpace = 4.f;
        // 自定义悬停时间
        config.notifyViewWaitDuration = 2.f;
        
        //显示
        [JMNotifyView showNotify:@"你还未实名, 请实名, 如有问题, 请联系客服" showView:[UIApplication sharedApplication].keyWindow config:config];
    } else { //系统默认配置样式
        
        // 超级自定义配置
        JMNotifyViewConfig *config = [JMNotifyViewConfig defaultNotifyConfig];
        
        // 系统自带默认四种实现类型
        if (sender.tag == 0) {
            config.backgroundColorType = JMNotifyViewBackgroundColorTypeSuccess;
        } else if (sender.tag == 1) {
            config.backgroundColorType = JMNotifyViewBackgroundColorTypeDanger;
        } else if (sender.tag == 2) {
            config.backgroundColorType = JMNotifyViewBackgroundColorTypeWarning;
        } else if (sender.tag == 3) {
            config.backgroundColorType = JMNotifyViewBackgroundColorTypeInfo;
        }
        //显示
        [JMNotifyView showNotify:@"你还未实名, 请实名, 如有问题, 请联系客服, 在写五个字" showView:[UIApplication sharedApplication].keyWindow config:config];
    }
    
    
    
}




@end






























