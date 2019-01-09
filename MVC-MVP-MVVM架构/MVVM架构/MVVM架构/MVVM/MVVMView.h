//
//  MVVMView.h
//  MVVM测试
//
//  Created by wangzhe on 2019/1/9.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVVMModel.h"

typedef void(^MVVMViewBlock)(void);

NS_ASSUME_NONNULL_BEGIN

@interface MVVMView : UIView

/**解析数据*/
-(void)parseData:(MVVMModel*)model;

/**传递回调方法*/
-(void)btnClickMethod:(MVVMViewBlock)block;

@end

NS_ASSUME_NONNULL_END
