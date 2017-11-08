//
//  MMInputView.h
//  keyboardUI-iOS
//
//  Created by 郭永红 on 2017/11/3.
//  Copyright © 2017年 keeponrunning. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    MMKeyBoardStyleSystem,  /* 跟苹果原生一样 */
    MMKeyBoardStyleAlipay,   /* 类似于支付宝金额输入键盘UI */
    MMKeyBoardStyle1,        /* 个人设计 1 */
    MMKeyBoardStyle2,        /* 个人设计 2 */
    MMKeyBoardStyle3,        /* 个人设计 3 */
} MMKeyBoardStyle;

typedef enum : NSUInteger {
    MMKeyBoardTypeNumerical,  /* 数字 */
    MMKeyBoardTypeDecimal,    /* 小数点 */
    MMKeyBoardTypeIdCard,     /* 身份证号 `X` */
} MMKeyBoardType;


@interface MMInputView : UIInputView

- (instancetype)initWithStyle:(MMKeyBoardStyle)style andType:(MMKeyBoardType)type;

@end
