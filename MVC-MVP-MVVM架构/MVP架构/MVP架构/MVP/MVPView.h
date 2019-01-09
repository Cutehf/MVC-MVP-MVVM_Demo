//
//  MVPView.h
//  MVP测试
//
//  Created by wangzhe on 2019/1/9.
//  Copyright © 2019年 MoGuJie. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MVPModel.h"

typedef void(^MVPViewBlock)(void);

NS_ASSUME_NONNULL_BEGIN

@interface MVPView : UIView

/**解析数据*/
-(void)parseData:(MVPModel*)model;

/**传递回调方法*/
-(void)btnClickMethod:(MVPViewBlock)block;

@end

NS_ASSUME_NONNULL_END
