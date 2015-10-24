//
//  ViewController.m
//  MidtermQuiz5
//
//  Created by William Smith on 10/23/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

int userScore;

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [answerTextF resignFirstResponder];
    NSString *levelReached = [[NSUserDefaults standardUserDefaults] stringForKey:@"levelReached"];
    
    userScore = [levelReached intValue];
    
    showQBut.layer.borderWidth = 1.0f;
    showQBut.layer.borderColor = [[UIColor whiteColor]CGColor];
    solveBut.layer.borderWidth = 1.0f;
    solveBut.layer.borderColor = [[UIColor whiteColor]CGColor];
    answerTextF.layer.borderWidth = 1.0f;
    answerTextF.layer.borderColor = [[UIColor whiteColor]CGColor];
    
    [self showScore];
    //questionLabel.text = @"**Click Show Question When You Are Ready! **";
    answerTextF.text = @"Enter answer here then Click Solve Question";
    [answerTextF becomeFirstResponder];
    
    
    questionLabPrompt.text = @"**Click Show Question When You Are Ready! **";
}
- (IBAction)endEditAnswer:(UITextField *)sender forEvent:(UIEvent *)event {
    
    [answerTextF resignFirstResponder];
    
}
- (IBAction)answerField:(id)sender {
    
    [answerTextF becomeFirstResponder];
}



    //Update score
- (void)showScore{
    
    
    NSString *levelReached = [[NSUserDefaults standardUserDefaults] stringForKey:@"levelReached"];
    int intForString = [levelReached intValue];
    
   
    
    intForString = intForString;
   
    
    NSString *stringForLabel = [NSString stringWithFormat:@"SCORE: %i of 10", intForString];
    
        scoreTextF.text = stringForLabel;
    
}


- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [answerTextF resignFirstResponder];
    
    return NO;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegn:withEvent");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
    //[answerField resignFirstResponder];
    
}

    //Show Question Button
- (IBAction)showQBut:(UIButton *)sender {
    [answerTextF resignFirstResponder];
    questionLabPrompt.text = nil;
     [self questions];
    
}


    //Reset button
- (IBAction)resetBut:(UIButton *)sender {
    [answerTextF resignFirstResponder];
    
    [self dismissViewControllerAnimated:YES completion:nil];
    [self resetScore];
}





    //Start questions
-(void)questions{
    [answerTextF resignFirstResponder];
    answerTextF.text = nil;
    
    if(userScore==0){
        //qustion 1
        questionLabel.text = @"Q1: What is 1 + 1";
    }
    if(userScore==1){
        //qustion 2
        questionLabel.text = @"Q2: WHAT IS THE COLOR OF GRASS?";
    }
    if(userScore==2){
        //qustion 3
        questionLabel.text = @"Q3: WHAT IS H2O?";
    }
    if(userScore==3){
        //qustion 4
        questionLabel.text = @"Q4: WHAT IS C3PO?";
    }
    if(userScore==4){
        //qustion 5
        questionLabel.text = @"Q5: WHAT CHEMICALCOMPOUND IS NO?";
    }
    if(userScore==5){
        //qustion 6
        questionLabel.text = @"Q6: WHO SAID 'I'll BE BACK?'";
    }
    if(userScore==6){
        //qustion 7
        questionLabel.text = @"Q7: WHAT IS REALLY MISSIN HERE?";
    }
    if(userScore==7){
        //qustion 8
        questionLabel.text = @"Q8: WHAT STATE IS HONOLULU IN?";
    }
    if(userScore==8){
        //qustion 9
        questionLabel.text = @"Q9: WHAT BUILDING HAS THE FOOD COURT?";
    }
    if(userScore==9){
        //qustion 10
        questionLabel.text = @"Q10: WHAT IS THE BEST BRAND OF MOTORCYCLES?";
    }
    if(userScore>9){
        //Yeah!!!
        questionLabel.text = @"Yeah! You answered all 10 questions!";
    }
}

// Solve question answer button
- (IBAction)solveBut:(UIButton *)sender {

    

    
    [answerTextF resignFirstResponder];
    
    questionLabel.text = @"??????";

    
    //answers
    
    //answer 1;
    if(userScore==0 && [answerTextF.text isEqualToString:@"2"]){
        
        userScore = 1;
        NSString *completedlvl = @"1";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        
        answerTextF.text = nil;
        [self viewDidLoad];
        
    }
    else if (userScore == 0 && ![answerTextF.text isEqualToString:@"2"]){
        
        answerTextF.text = nil;
        [self viewDidLoad];
        
    }
    
    //answer 2
    if(userScore==1 && [answerTextF.text isEqualToString:@"GREEN"]){
        
        userScore = 2;
        
        NSString *completedlvl = @"2";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        answerTextF.text = nil;
        [self viewDidLoad];
        
    }
    else if (userScore == 1 && ![answerTextF.text isEqualToString:@"GREEN"]){
        
        answerTextF.text = nil;
        [self viewDidLoad];
    }
    
    
    //answer 3
    if(userScore==2 && [answerTextF.text isEqualToString:@"WATER"]){
        
        userScore = 3;
        NSString *completedlvl = @"3";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        
        
    }
    else if (userScore == 2 && ![answerTextF.text isEqualToString:@"WATER"]){
        
        answerTextF.text = nil;
        [self viewDidLoad];
    }
    
    //answer 4
    if(userScore==3 && [answerTextF.text isEqualToString:@"ANDROID"]){
        
        userScore = 4;
        NSString *completedlvl = @"4";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        
        
    }
    else if (userScore == 3 && ![answerTextF.text isEqualToString:@"ANDROID"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerTextF.text = nil;
        [self viewDidLoad];
    }
    
    //answer 5
    if(userScore==4 && [answerTextF.text isEqualToString:@"NITRIC OXIDE"]){
        
        userScore = 5;
        NSString *completedlvl = @"5";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (userScore == 4 && ![answerTextF.text isEqualToString:@"NITRIC OXIDE"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerTextF.text = nil;
        [self viewDidLoad];
    }
    
    //answer 6
    if(userScore==5 && [answerTextF.text isEqualToString:@"THE TERMINATOR"]){
        
        userScore = 6;
        NSString *completedlvl = @"6";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
    }
    else if (userScore == 5 && ![answerTextF.text isEqualToString:@"THE TERMINATOR"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerTextF.text = nil;
        [self viewDidLoad];
    }
    
    
    //answer 7
    if(userScore==6 && [answerTextF.text isEqualToString:@"G"]){
        
        userScore = 7;
        NSString *completedlvl = @"7";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (userScore == 6 && ![answerTextF.text isEqualToString:@"G"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerTextF.text = nil;
        [self viewDidLoad];
    }
    //answer 8
    if(userScore==7 && [answerTextF.text isEqualToString:@"HAWAII"]){
        
        userScore = 8;
        NSString *completedlvl = @"8";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (userScore == 7 && ![answerTextF.text isEqualToString:@"HAWAII"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerTextF.text = nil;
        [self viewDidLoad];
    }
    //answer 9
    if(userScore==8 && [answerTextF.text isEqualToString:@"MSC"]){
        
        userScore = 9;
        NSString *completedlvl = @"9";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (userScore == 8 && ![answerTextF.text isEqualToString:@"MSC"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerTextF.text = nil;
        [self viewDidLoad];
        
    }
    //answer 10
    if(userScore==9 && [answerTextF.text isEqualToString:@"BMW"]){
        
        userScore = 10;
        NSString *completedlvl = @"10";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (userScore == 9 && ![answerTextF.text isEqualToString:@"BMW"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerTextF.text = nil;
        [self viewDidLoad];
    }
    
    
    if(userScore>10 ){
        
        //[self winner];
        
        questionLabel.text = @"Congratulations! You answered all 10 questions correctly.!";
        
        answerTextF.text = nil;
    }
    
}

    
-(void)resetScore {
    
    [answerTextF resignFirstResponder];
    NSString *levelReached = [[NSUserDefaults standardUserDefaults] stringForKey:@"levelReached"];
    int intForString = [levelReached intValue];
    intForString = 0;
    levelReached = [@(intForString) stringValue];
    [[NSUserDefaults standardUserDefaults] setObject:levelReached forKey:@"levelReached"];
    [[NSUserDefaults standardUserDefaults] synchronize];
    
    
    //NSString *stringForLabel = [NSString stringWithFormat:@"YOUR SCORE HAS BEEN RESET TO:  %i ", intForString];
    //highestLevelReached = @"YOUR SCORE HAS BEEN RESET TO:  %i ", intForString;
    
    
    
    //NSString *stringForLabel = [NSString stringWithFormat:@"SCORE WAS RESET TO:  %i ", intForString];
    
    //scoreTextF.text = stringForLabel;
    
    [self viewDidLoad];
    
    
}
    



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
