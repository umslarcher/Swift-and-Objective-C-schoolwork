//
//  ViewController.h
//  MidtermQuiz5
//
//  Created by William Smith on 10/23/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController  <UITextFieldDelegate>{



    __weak IBOutlet UIScrollView *scrollView;
    // TextFields, Labels, and views
    __weak IBOutlet UITextField *scoreTextF;
    __weak IBOutlet UITextView *answerTextF;
    __weak IBOutlet UILabel *questionLabel;
    __weak IBOutlet UILabel *questionLabPrompt;
    
    
    // Buttons
    __weak IBOutlet UIButton *showQBut;
    __weak IBOutlet UIButton *solveBut;
    __weak IBOutlet UIButton *resetBut;
}


    // Action Buttons
- (IBAction)showQBut:(UIButton *)sender;
- (IBAction)solveBut:(UIButton *)sender;
- (IBAction)resetBut:(UIButton *)sender;

@end

