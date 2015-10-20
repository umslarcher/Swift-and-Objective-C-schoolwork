//
//  ViewController.m
//  resignKeyboard
//
//  Created by William Smith on 10/12/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()




@end

@implementation ViewController


@synthesize myLab;
@synthesize myTextField;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)doSomething:(id)sender {
    
}


-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    myLab.text = textField.text;
    
    [textField resignFirstResponder];
    
    return YES;
}


@end
