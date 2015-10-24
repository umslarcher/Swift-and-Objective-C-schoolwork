//
//  ViewController.h
//  MidtermQuiz4
//
//  Created by William Smith on 10/20/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{

    __weak IBOutlet UIScrollView *questField;

    __weak IBOutlet UIScrollView *answerField;

    __weak IBOutlet UIButton *showQBut;
    
    __weak IBOutlet UIButton *solveBut;
}
- (IBAction)showQBut:(id)sender;
- (IBAction)solveBut:(id)sender;



@end

