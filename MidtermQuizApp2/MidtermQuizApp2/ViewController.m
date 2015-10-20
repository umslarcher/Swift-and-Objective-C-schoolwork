//
//  ViewController.m
//  MidtermQuizApp2
//
//  Created by William Smith on 10/18/15.
//  Copyright © 2015 William Smith. All rights reserved.
//


#import "ViewController.h"


@interface ViewController ()

@end

int usersHighestLevel;


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    NSString *levelReached = [[NSUserDefaults standardUserDefaults] stringForKey:@"levelReached"];

    usersHighestLevel = [levelReached intValue];

    noneButton.layer.borderWidth = 1.0f;
    noneButton.layer.borderColor = [[UIColor whiteColor]CGColor];
    solveButton.layer.borderWidth = 1.0f;
    solveButton.layer.borderColor = [[UIColor whiteColor]CGColor];
    showQuestionButton.layer.borderWidth = 1.0f;
    showQuestionButton.layer.borderColor = [[UIColor whiteColor]CGColor];
    answerField.layer.borderWidth = 1.0f;
    answerField.layer.borderColor = [[UIColor whiteColor]CGColor];
    question.layer.borderWidth = 1.0f;
    question.layer.borderColor = [[UIColor whiteColor]CGColor];

    
    question.text = @"Are You Ready???";
    //answerField.text = nil;

}
// Action for the ShowQuestion Button
-(void)showQuestion:(id)sender{
    
        [self questions];
}


- (IBAction)endEditAnswer:(UITextField *)sender forEvent:(UIEvent *)event {
    [answerField resignFirstResponder];
}
- (IBAction)answerField:(id)sender {
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [answerField resignFirstResponder];
    
    return NO;
}
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegn:withEvent");
    [self.view endEditing:YES];
    [super touchesBegan:touches withEvent:event];
    //[answerField resignFirstResponder];

}


-(void)questions{
    
    answerField.text = nil;
    
    if(usersHighestLevel==0){
        //qustion 1
        question.text = @"Q1: What is 1 + 1";
    }
    if(usersHighestLevel==1){
        //qustion 2
        question.text = @"Q2: WHAT IS THE COLOR OF GRASS?";
    }
    if(usersHighestLevel==2){
        //qustion 3
        question.text = @"Q3: WHAT IS H2O?";
    }
    if(usersHighestLevel==3){
        //qustion 4
        question.text = @"Q4: WHAT IS C3PO?";
    }
    if(usersHighestLevel==4){
        //qustion 5
        question.text = @"Q5: WHAT CHEMICALCOMPOUND IS NO?";
    }
    if(usersHighestLevel==5){
        //qustion 6
        question.text = @"Q6: WHO SAID 'I'll BE BACK?'";
    }
    if(usersHighestLevel==6){
        //qustion 7
        question.text = @"Q7: WHAT IS REALLY MISSIN HERE?";
    }
    if(usersHighestLevel==7){
        //qustion 8
        question.text = @"Q8: WHAT STATE IS HONOLULU IN?";
    }
    if(usersHighestLevel==8){
        //qustion 9
        question.text = @"Q9: WHAT BUILDING HAS THE FOOD COURT?";
    }
    if(usersHighestLevel==9){
        //qustion 10
        question.text = @"Q10: WHAT IS THE BEST BRAND OF MOTORCYCLES?";
    }
    if(usersHighestLevel>9){
        //Yeah!!!
        question.text = @"Yeah! You answered all 10 questions!";
    }
}


-(IBAction)solveAction:(id)sender{
    
    
    [answerField resignFirstResponder];
    
    
    //answers
    if(usersHighestLevel==0 && [answerField.text isEqualToString:@"2"]){
        
        //answer 1
        
        //NSLog(@"Highest Level before 1 = %i", usersHighestLevel);
        usersHighestLevel = 1;
        
        //NSLog(@"Highest Level before 1 = %i ", usersHighestLevel);
        NSString *completedlvl = @"1";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        //NSLog(@"In if before viewDidLoad now ");
        
        [self viewDidLoad];
        //NSLog(@"In if after viewDidLoad now ");
    }
    else if (usersHighestLevel == 0 && ![answerField.text isEqualToString:@"2"]){
    //else{
        //NSLog(@"In else now ");
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];
    
    }
    
    //answer 2
    if(usersHighestLevel==1 && [answerField.text isEqualToString:@"GREEN"]){
        //NSLog(@"Highest Level before 2 = %i ", usersHighestLevel);
        usersHighestLevel = 2;
        //NSLog(@"Highest Level after 2  = %i", usersHighestLevel);
        NSString *completedlvl = @"2";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];

    }
    else if (usersHighestLevel == 1 && ![answerField.text isEqualToString:@"GREEN"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];
    }
    
    
    //answer 3
    if(usersHighestLevel==2 && [answerField.text isEqualToString:@"WATER"]){
        
        usersHighestLevel = 3;
        NSString *completedlvl = @"3";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (usersHighestLevel == 2 && ![answerField.text isEqualToString:@"WATER"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];
    }

    //answer 4
    if(usersHighestLevel==3 && [answerField.text isEqualToString:@"ANDROID"]){
        
        usersHighestLevel = 4;
        NSString *completedlvl = @"4";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (usersHighestLevel == 3 && ![answerField.text isEqualToString:@"ANDROID"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];
    }
    
    //answer 5
    if(usersHighestLevel==4 && [answerField.text isEqualToString:@"NITRIC OXIDE"]){
        
        usersHighestLevel = 5;
        NSString *completedlvl = @"5";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (usersHighestLevel == 4 && ![answerField.text isEqualToString:@"NITRIC OXIDE"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];
    }
    
    //answer 6
    if(usersHighestLevel==5 && [answerField.text isEqualToString:@"THE TERMINATOR"]){
        
        usersHighestLevel = 6;
        NSString *completedlvl = @"6";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
    }
    else if (usersHighestLevel == 5 && ![answerField.text isEqualToString:@"THE TERMINATOR"]){

        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];
    }

    
    //answer 7
    if(usersHighestLevel==6 && [answerField.text isEqualToString:@"G"]){
        
        usersHighestLevel = 7;
        NSString *completedlvl = @"7";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (usersHighestLevel == 6 && ![answerField.text isEqualToString:@"G"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];
    }
    //answer 8
    if(usersHighestLevel==7 && [answerField.text isEqualToString:@"HAWAII"]){
        
        usersHighestLevel = 8;
        NSString *completedlvl = @"8";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (usersHighestLevel == 7 && ![answerField.text isEqualToString:@"HAWAII"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];
    }
    //answer 9
    if(usersHighestLevel==8 && [answerField.text isEqualToString:@"MSC"]){
        
        usersHighestLevel = 9;
        NSString *completedlvl = @"9";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (usersHighestLevel == 8 && ![answerField.text isEqualToString:@"MSC"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];

    }
    //answer 10
    if(usersHighestLevel==9 && [answerField.text isEqualToString:@"BMW"]){
        
        usersHighestLevel = 10;
        NSString *completedlvl = @"10";
        [[NSUserDefaults standardUserDefaults] setObject:completedlvl forKey:@"levelReached"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        [self viewDidLoad];
        //[self questions];
        
    }
    else if (usersHighestLevel == 9 && ![answerField.text isEqualToString:@"BMW"]){
        
        //[self wrongAnswer];
        
        //question.text = @"Incorrect, Try Again!";
        answerField.text = nil;
        [self viewDidLoad];
    }
    
    
    if(usersHighestLevel>10 ){
        
        //[self winner];
        
        question.text = @"Congratulations! You answered all 10 questions correctly.!";
        
        answerField.text = nil;
    }
    
}

-(void)wrongAnswer{
    
    NSLog(@"In wrongAnswer now ");
    
    question.text = @"Incorrect, Try Again!";
    answerField.text = nil;
}
-(void)wrongAnswer2{
    
    
    question.text = @"Current worlds’ top performing superbike maker!";
    answerField.text = nil;
}

-(void)winner{
    
    question.text = @"Congratulations! You answered all 10 questions correctly.!";
    
    answerField.text = @"Click ‘Quit’ to see your score and reset the quiz.";
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end


