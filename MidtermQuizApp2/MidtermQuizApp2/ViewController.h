//
//  ViewController.h
//  MidtermQuizApp2
//
//  Created by William Smith on 10/18/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate> {
    
    
    __weak IBOutlet UILabel *showField;
    __weak IBOutlet UILabel *question;
    __weak IBOutlet UIButton *solveButton;
    __weak IBOutlet UIButton *showQuestionButton;
    __weak IBOutlet UITextField *answerField;

    
}

-(IBAction)solveAction:(id)sender;

-(IBAction)showQuestion:(id)sender;





@end

