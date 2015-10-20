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
    
    IBOutlet UIButton *returnBut;
    
    IBOutlet UIButton *resetScoreBut;
    
    
}


-(IBAction)exit:(id)sender;

-(IBAction)resetScore:(id)sender;

@end