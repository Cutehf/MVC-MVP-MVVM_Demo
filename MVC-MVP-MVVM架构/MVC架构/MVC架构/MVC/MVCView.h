//
//  MVCView.h
//  MVC测试
//
//  Created by wangzhe on 2019/1/9.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVCModel.h"

typedef void(^MVCViewBlock)(void);

NS_ASSUME_NONNULL_BEGIN

@interface MVCView : UIView

/**解析数据*/
-(void)parseData:(MVCModel*)model;

/**传递回调方法*/
-(void)btnClickMethod:(MVCViewBlock)block;

@end

NS_ASSUME_NONNULL_END
