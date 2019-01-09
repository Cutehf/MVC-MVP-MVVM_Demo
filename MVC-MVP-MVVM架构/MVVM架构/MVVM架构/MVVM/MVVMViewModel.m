//
//  MVVMViewModel.m
//  MVVM测试
//
//  Created by wangzhe on 2019/1/9.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import "MVVMViewModel.h"
#import "MVVMModel.h"

@implementation MVVMViewModel

-(void)parseData:(MVVMView*)mvvmView{
    
    
    // 1. 初始化模型
    MVVMModel *model = [MVVMModel new];
    
    // 2.绑定模型
    [mvvmView parseData:model];
    
    // 3.更新数据
    model.text = @"测试数据";
    
    // 4.回调方法
    [mvvmView btnClickMethod:^{
        model.text = [NSString stringWithFormat:@"MVVM点击%d",arc4random()%100];
        //不需要下面这个，因为绑定了，所以model的text被监视了变化
        //[mvvmView parseData:model];
    }];
    
}

@end
