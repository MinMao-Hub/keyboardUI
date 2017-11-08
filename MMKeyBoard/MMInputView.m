//
//  MMInputView.m
//  keyboardUI-iOS
//
//  Created by 郭永红 on 2017/11/3.
//  Copyright © 2017年 keeponrunning. All rights reserved.
//

#import "MMInputView.h"


//获取屏幕 宽度、高度
#ifndef kScreenHeight
#define kScreenHeight      [[UIScreen mainScreen] bounds].size.height
#endif

#ifndef kScreenWidth
#define kScreenWidth       [[UIScreen mainScreen] bounds].size.width
#endif

//不同屏幕尺寸字体适配（375，667是因为目前苹果开发一般用IPHONE6做中间层 如果不是则根据实际情况修改）
#ifndef kScreenWidthRatio
#define kScreenWidthRatio  (kScreenWidth / 375.0)
#endif

#ifndef kScreenHeightRatio
#define kScreenHeightRatio (kScreenHeight / 667.0)
#endif

//根据传入的值算出乘以比例之后的值
#define AdaptedWidth(x)    ceilf((x) * kScreenWidthRatio)
#define AdaptedHeight(x)   ceilf((x) * kScreenHeightRatio)

#ifndef MMKeyBoardH     //iPhone X在代码里面特殊处理了键盘高度
#define MMKeyBoardH 216
#endif

#define MMKeyW 100
#define MMKeyH 100
#define MMOKeyW 100
#define MMDKeyH 100

@interface MMInputView()

@property (nonatomic, strong) UIView *keyArea;
@property (nonatomic, assign) MMKeyBoardStyle keyboardtStyle;
@property (nonatomic, assign) MMKeyBoardType  keyboardtType;

@end


@implementation MMInputView
@synthesize keyArea;
- (instancetype)initWithStyle:(MMKeyBoardStyle)style andType:(MMKeyBoardType)type {
    self = [self initWithFrame:CGRectZero inputViewStyle:UIInputViewStyleDefault];
    if (self) {
        self.keyboardtStyle = style;
        self.keyboardtType  = type;
        
        [self initUI];
    }
    return self;
}

- (void)initUI {
    CGFloat keyBoardHeight = MMKeyBoardH;
    if (kScreenHeight == 812) {
        keyBoardHeight = MMKeyBoardH + 34;
    }
    if (kScreenHeight == 736) {
        keyBoardHeight = AdaptedWidth(MMKeyBoardH);
    }
    
    self.frame = CGRectMake(0, 0, [UIScreen mainScreen].nativeBounds.size.width, keyBoardHeight);
    
    keyArea = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, kScreenHeight == 812 ? AdaptedWidth(MMKeyBoardH) : keyBoardHeight)];
    keyArea.backgroundColor = [UIColor purpleColor];//self.backgroundColor;
    [self addSubview:keyArea];
    
    
    //初始化所有按键
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    //设置位置
    if (self.keyboardtStyle == MMKeyBoardStyleAlipay) {
        [self alipayStyle];
    } else if (self.keyboardtStyle == MMKeyBoardStyle1) {
        
    } else if (self.keyboardtStyle == MMKeyBoardStyle2) {
        
    } else if (self.keyboardtStyle == MMKeyBoardStyle3) {
        
    } else {
        [self systemStyle];
    }
}

- (void)systemStyle {
    
    //Numerical key 【数字键】
    
    
    //Delete key【删除键】
    
    
    //Done key【reture键】
    
    
    //Hide keyBoard key【关闭键】
    
    //Decimal key 【小数点】
    
    //IdCard key 【身份证 `X`】
}

- (void)alipayStyle {
    
}

@end
