//
//  ViewController.m
//  keyboardUI-iOS
//
//  Created by 郭永红 on 2017/11/3.
//  Copyright © 2017年 keeponrunning. All rights reserved.
//

#import "ViewController.h"
#import "MMInputView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *tfd1;

@property (weak, nonatomic) IBOutlet UITextField *tfd2;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MMInputView *inputView = [[MMInputView alloc] initWithFrame:CGRectZero];
    
    _tfd1.inputView = inputView;
    
    
}


@end
