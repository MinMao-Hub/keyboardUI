//
//  MMInputView.m
//  keyboardUI-iOS
//
//  Created by 郭永红 on 2017/11/3.
//  Copyright © 2017年 keeponrunning. All rights reserved.
//

#import "MMInputView.h"

#define MMScreenW [UIScreen mainScreen].bounds.size.width
#define MMScreenH [UIScreen mainScreen].bounds.size.height
#define MMKeyBoardH 253 * MMScreenW/375
#define MMKeyW 100
#define MMKeyH 100
#define MMOKeyW 100
#define MMDKeyH 100

@interface MMInputView()

@end


@implementation MMInputView

- (instancetype)initWithFrame:(CGRect)frame inputViewStyle:(UIInputViewStyle)inputViewStyle {
    self = [super initWithFrame:frame inputViewStyle:inputViewStyle];
    if (self) {
        [self initUI];
    }
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initUI];
    }
    
    return self;
}

- (void)initUI {
    self.frame = CGRectMake(0, 0, [UIScreen mainScreen].nativeBounds.size.width, MMKeyBoardH);
}

- (void)layoutSubviews {
    [super layoutSubviews];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
