//
//  ViewController.m
//  NewFibGenObjC
//
//  Created by William Smith on 10/25/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
  outputLabel.text = @"Fibonacci Sequence Prints Here!";
    
}

- (IBAction)submitButton:(id)sender {
    [self genFib];
    
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField {
    [textField resignFirstResponder];
    
    [inputField becomeFirstResponder]; //if desired
    
    return YES;
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    [inputField resignFirstResponder];
    
    
}


-(void) genFib{
    
    [inputField resignFirstResponder];
  
    
    int userInput = 0;
    int n1, n2, n3, fn, i;
    
    userInput = inputField.text.intValue;
    
    fn = 0;
    i = 0;
    n1 = 0;
    n2 = 1;
    n3 = userInput; //userInput;
    
    NSString *series = [@(n1) stringValue];
    //series = [series stringByAppendingString:@", "];
    //series = [series stringByAppendingString:[@(n2) stringValue]];
    //series = [series stringByAppendingString:@", "];
    
    for (i=0; i<=n3; i++){
        fn = n1+n2;
        series = [series stringByAppendingString:@", "];
        series = [series stringByAppendingString:[@(n2) stringValue]];
        
        n1 = n2;
        n2 = fn;
    }
    
    
    //NSMutableString *myMutableString = [[NSMutableString alloc] initWithString:series];
    
    //series = series.substringToIndex(series.endIndex.predecessor())
    outputLabel.text = series;
    
}
    

    - (void)didReceiveMemoryWarning {
        [super didReceiveMemoryWarning];
        // Dispose of any resources that can be recreated.
}
    
    
    @end
