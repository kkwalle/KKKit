//
//  ViewController.m
//  KKKit
//
//  Created by kkwalle on 16/6/8.
//  Copyright © 2016年 kk.com. All rights reserved.
//

#import "ViewController.h"
#import "KKCategory.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 150, 150, 80)];
    [textField setTextFont:nil textColor:[UIColor purpleColor] borderStyle:UITextBorderStyleNone];
    
    [textField setAttPlaceholder:@"hello world" TextFont:[UIFont systemFontOfSize:50] textColor:[UIColor redColor]];
    [self.view addSubview:textField];
    
    
    UIView *view = [[UIView alloc] init];
    view.backgroundColor = [UIColor redColor];
    [view setLeft:10 toRight:10 top:20 height:40];
    [self.view addSubview:view];
}

@end
