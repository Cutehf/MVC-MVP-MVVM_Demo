//
//  MVPViewController.m
//  MVP测试
//
//  Created by wangzhe on 2019/1/9.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import "MVPViewController.h"
#import "MVPView.h"
#import "MVPPresent.h"

@interface MVPViewController ()

@end

@implementation MVPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 1.初始化视图
    MVPView *mvpView = [[MVPView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:mvpView];
    
    
    // 2.执行负责的业务操作
    MVPPresent *mvpPresent = [MVPPresent new];
    [mvpPresent parseData:mvpView];
    
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
