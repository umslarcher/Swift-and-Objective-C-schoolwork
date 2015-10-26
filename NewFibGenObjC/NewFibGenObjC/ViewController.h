//
//  ViewController.h
//  NewFibGenObjC
//
//  Created by William Smith on 10/25/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  {

    __weak IBOutlet UILabel *outputLabel;
    __weak IBOutlet UITextField *inputField;
    __weak IBOutlet UIButton *submitButton;
    
}


- (IBAction)submitButton:(id)sender;


@end

