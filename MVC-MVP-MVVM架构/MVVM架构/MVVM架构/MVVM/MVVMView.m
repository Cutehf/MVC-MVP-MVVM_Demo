//
//  MVVMView.m
//  MVVM测试
//
//  Created by wangzhe on 2019/1/9.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import "MVVMView.h"
#import "KVOController.h"

@interface MVVMView ()

@property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UIButton *btn;
@property (nonatomic,copy) MVVMViewBlock block;

@end

@implementation MVVMView

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    self.backgroundColor = [UIColor redColor];
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 30)];
    [self addSubview:self.titleLabel];
    self.titleLabel.textColor = [UIColor darkTextColor];
    self.titleLabel.font = [UIFont systemFontOfSize:14];
    self.titleLabel.backgroundColor = [UIColor greenColor];
    self.titleLabel.text = @"标题";
    
    self.btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 40, 50, 50)];
    [self addSubview:self.btn];
    self.btn.backgroundColor = [UIColor blueColor];
    [self.btn setTitle:@"点击" forState:UIControlStateNormal];
    [self.btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - 按钮点击方法
-(void)btnClick{
    if (self.block) {
        self.block();
    }
}


//绑定kvo 添加监视
-(void)parseData:(MVVMModel*)model{
    
    __weak typeof(self) weakSelf = self;
    [self.KVOController observe:model keyPath:@"text" options:NSKeyValueObservingOptionNew block:^(id  _Nullable observer, id  _Nonnull object, NSDictionary<NSKeyValueChangeKey,id> * _Nonnull change) {
        weakSelf.titleLabel.text = change[NSKeyValueChangeNewKey];
    }];
    
}

//回调按钮点击方法
-(void)btnClickMethod:(MVVMViewBlock)block{
    self.block = block;
}


@end
