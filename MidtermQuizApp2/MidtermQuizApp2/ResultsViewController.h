//
//  ResultsViewController.h
//  MidtermQuizApp2
//
//  Created by William Smith on 10/19/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ResultsViewController : UIViewController <UITextFieldDelegate>{
    
    
    IBOutlet UILabel *highestLevelReached;
    
    
    
    IBOutlet UILabel *resultsField;
    IBOutlet UILabel *resultLab;
    
    
    IBOutlet UIButton *resetScoreBut;
    
    
    IBOutlet UIButton *resetButton;
}




-(IBAction)resetScore:(id)sender;

@end