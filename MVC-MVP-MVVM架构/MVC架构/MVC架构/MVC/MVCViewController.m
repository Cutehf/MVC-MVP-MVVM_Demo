//
//  MVCViewController.m
//  MVC测试
//
//  Created by wangzhe on 2019/1/9.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import "MVCViewController.h"
#import "MVCView.h"
#import "MVCModel.h"

@interface MVCViewController ()

@end

@implementation MVCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
    // 1.初始化视图
    MVCView *mvcView = [[MVCView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    [self.view addSubview:mvcView];
    __weak MVCView *tempMVC = mvcView;
    [mvcView btnClickMethod:^{
        //下面方法有点多余，仅仅为了测试使用
        MVCModel *model = [[MVCModel alloc] init];
        model.text = [NSString stringWithFormat:@"MVC点击%d",arc4random()%100];
        [tempMVC parseData:model];
    }];
    
    
    
    // 2.解析数据，一般是网络上的数据
    MVCModel *model = [[MVCModel alloc] init];
    model.text = @"测试数据";
    
    // 3.解析完后给view更新数据
    [mvcView parseData:model];
    
    
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
