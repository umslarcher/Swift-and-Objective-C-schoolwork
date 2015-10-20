//
//  ViewController.h
//  MidtermQuizApp2
//
//  Created by William Smith on 10/18/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
    
    
    IBOutlet UILabel *question;
    IBOutlet UIButton *noneButton;
    IBOutlet UIButton *solveButton;

    IBOutlet UIButton *showQuestionButton;
    
    IBOutlet UITextField *answerField;
    
    
}


-(IBAction)solveAction:(id)sender;

-(IBAction)showQuestion:(id)sender;



@end

