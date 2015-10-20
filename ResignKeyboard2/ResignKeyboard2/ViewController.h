//
//  ViewController.h
//  ResignKeyboard2
//
//  Created by William Smith on 10/12/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate>




@property (weak, nonatomic) IBOutlet UILabel *myLab;

- (IBAction)textAction:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *textIn;



@end

