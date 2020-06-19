//
//  ViewController.m
//  UITextField
//
//  Created by Mac on 2019/2/21.
//  Copyright © 2019 Mac. All rights reserved.
//

#import "ViewController.h"
#import "UITextField+SET.h"
#import "MenuTextField.h"

@interface ViewController ()<UITextFieldDelegate>

@property (nonatomic, strong) MenuTextField *pasteField;

@property (nonatomic, strong) MenuTextField *noneField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.pasteField = [[MenuTextField alloc] initWithFrame:CGRectMake(20, 100, 200, 30)];
    self.pasteField.layer.borderWidth = 0.5f;
    self.pasteField.layer.borderColor = [UIColor blackColor].CGColor;
    self.pasteField.placeholder = @"只允许粘贴";
    self.pasteField.delegate = self;
    self.pasteField.tag = 100;
    [self.view addSubview:self.pasteField];
    
    self.noneField = [[MenuTextField alloc] initWithFrame:CGRectMake(20, 200, 200, 30)];
    self.noneField.layer.borderWidth = 0.5f;
    self.noneField.layer.borderColor = [UIColor blackColor].CGColor;
    self.noneField.placeholder = @"只允许选择、全选、复制";
    self.noneField.delegate = self;
    self.noneField.tag = 101;
    [self.view addSubview:self.noneField];
}


@end
