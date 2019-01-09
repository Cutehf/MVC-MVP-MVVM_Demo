//
//  MVPPresent.m
//  MVP测试
//
//  Created by wangzhe on 2019/1/9.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import "MVPPresent.h"
#import "MVPModel.h"

@implementation MVPPresent

-(void)parseData:(MVPView*)mvpView{
    
    // 1.获取数据，一般是网络数据
    MVPModel *model = [MVPModel new];
    model.text = @"测试数据";
    
    // 2. 界面更新数据展示
    [mvpView parseData:model];
    
    // 3.执行界面回调的方法
    __weak MVPView *tempMVP = mvpView;
    [mvpView btnClickMethod:^{
        model.text = [NSString stringWithFormat:@"MVP点击%d",arc4random()%100];
        [tempMVP parseData:model];
    }];
}

@end
