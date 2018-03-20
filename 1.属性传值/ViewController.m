//
//  ViewController.m
//  1.属性传值
//
//  Created by PatrickY on 2017/11/24.
//  Copyright © 2017年 PatrickY. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"
#import "DefaultInstance.h"

@interface ViewController ()

@property (nonatomic, strong) UILabel *label;
@property (nonatomic, strong) UIButton *btn;

@end

@implementation ViewController

- (UILabel *)label {
    
    if (_label == nil) {
        
        _label = [[UILabel alloc] initWithFrame:CGRectMake(100, 200, 200, 40)];
        _label.backgroundColor = [UIColor redColor];
        _label.textColor = [UIColor blueColor];

    }
    
    return _label;
    
}

- (UIButton *)btn {
    
    if (_btn == nil) {
        
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 200, 40)];
        _btn.backgroundColor = [UIColor blueColor];
        [_btn setTitle:@"NextView" forState:UIControlStateNormal];
        
        [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    return _btn;
}

- (void)btnClick {
    
    NextViewController *nVC = [[NextViewController alloc] init];
    
    [DefaultInstance SharedInstance].str = @"单例传值";
    
    nVC.str = [DefaultInstance SharedInstance].str;
    
    [self presentViewController:nVC animated:YES completion:nil];
    
}

- (void)viewWillAppear:(BOOL)animated {

    [super viewWillAppear:animated];
    
    self.label.text = [DefaultInstance SharedInstance].str;
    
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.label];
    [self.view addSubview:self.btn];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
