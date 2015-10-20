//
//  ResultsViewController.m
//  MidtermQuizApp2
//
//  Created by William Smith on 10/19/15.
//  Copyright © 2015 William Smith. All rights reserved.
//


#import "ResultsViewController.h"

@interface ResultsViewController ()

@end

@implementation ResultsViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.



    
    resetScoreBut.layer.borderWidth = 1.0f;
    resetScoreBut.layer.borderColor = [[UIColor whiteColor]CGColor];
    returnBut.layer.borderWidth = 1.0f;
    returnBut.layer.borderColor = [[UIColor whiteColor]CGColor];
    resultsField.layer.borderWidth = 1.0f;
    resultsField.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    NSString *levelReached = [[NSUserDefaults standardUserDefaults] stringForKey:@"levelReached"];
    int intForString = [levelReached intValue];
    
    //NSLog(@"Highest Level before result = %i ", intForString);
    
    intForString = intForString;  // + 1;
    //NSLog(@"Highest Level after result = %i ", intForString);
    
    NSString *stringForLabel = [NSString stringWithFormat:@"YOU HAVE REACHED SCORED: %i of 10 ON THE QUIZ", intForString];
    
    highestLevelReached.text = stringForLabel;
    
    
}


-(IBAction)exit:(id)sender;{
    
}

-(IBAction)resetScore:(id)sender;{
    
    [self dismissViewControllerAnimated:YES completion:nil];
    [self resetStandardUserDefaults];
    
}

-(void)resetStandardUserDefaults {
    
    
    NSString *levelReached = [[NSUserDefaults standardUserDefaults] stringForKey:@"levelReached"];
    int intForString = [levelReached intValue];
    intForString = 0;
    levelReached = [@(intForString) stringValue];
    [[NSUserDefaults standardUserDefaults] setObject:levelReached forKey:@"levelReached"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
    NSString *stringForLabel = [NSString stringWithFormat:@"YOUR SCORE BEEN RESET TO:  %i ", intForString];
    
    highestLevelReached.text = stringForLabel;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
