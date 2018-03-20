//
//  NextViewController.m
//  1.属性传值
//
//  Created by PatrickY on 2017/11/24.
//  Copyright © 2017年 PatrickY. All rights reserved.
//

#import "NextViewController.h"
#import "DefaultInstance.h"

@interface NextViewController ()

@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, strong) UIButton *btn;

@end

@implementation NextViewController

- (UITextField *)textField {
    
    if (!_textField) {
        
        _textField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 200, 40)];
        _textField.textColor = [UIColor blackColor];
        _textField.borderStyle = UITextBorderStyleLine;
        
        _textField.text = [DefaultInstance SharedInstance].str;
        
    }
    
    return _textField;
    
}

- (UIButton *)btn {
    
    if (!_btn) {
        
        _btn = [[UIButton alloc] initWithFrame:CGRectMake(100, 400, 200, 40)];
        _btn.backgroundColor = [UIColor greenColor];
        [_btn setTitle:@"BACKFOR1" forState:UIControlStateNormal];
        
        [_btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
        
    }
    
    return _btn;
    
}

- (void)btnClick {
    
    [DefaultInstance SharedInstance].str = self.textField.text;
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.textField];
    [self.view addSubview:self.btn];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
