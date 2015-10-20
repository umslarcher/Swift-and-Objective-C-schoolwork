//
//  ViewController.h
//  resignKeyboard
//
//  Created by William Smith on 10/12/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import <UIKit/UIKit.h>
                                                //delegating
@interface ViewController : UIViewController <UITextFieldDelegate>


- (IBAction)doSomething:(id)sender;

@property (weak, nonatomic) IBOutlet UITextField *myTextField;

@property (weak, nonatomic) IBOutlet UILabel *myLab;

@end

