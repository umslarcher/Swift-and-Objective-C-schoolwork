//
//  HypnoViewController.m
//  HypnoWithText-Chap7
//
//  Created by William Smith on 10/12/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import "HypnoViewController.h"
#import "HypnoView.h"

@interface HypnoViewController () <UITextFieldDelegate>
@end

@implementation HypnoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        
        // Set the tab bar item's title
        self.tabBarItem.title = @"Hypnotize";
        
        // Create a UIImage from a file
        // This will use Hypno@2x on retina display devices
        UIImage *image = [UIImage imageNamed:@"Hypno.png"];
        
        // Put that image on the tab bar item
        self.tabBarItem.image = image;
    }
    
    return self;
}

- (void)loadView
{
    // Create a view
    CGRect frame = [UIScreen mainScreen].bounds;
    HypnoView *backgroundView = [[HypnoView alloc] initWithFrame:frame];
    
    CGRect textFieldRect = CGRectMake(40, 70, 240, 30);
    UITextField *textField = [[UITextField alloc] initWithFrame:textFieldRect];
    
    // Setting the border style on the text field will allow us to see it easier
    textField.borderStyle = UITextBorderStyleRoundedRect;
    
    textField.placeholder = @"Hypnotize me!";
    textField.returnKeyType = UIReturnKeyDone;
    [backgroundView addSubview:textField];
    
    textField.delegate = self;
    
    
    // Set it as *the* view of this view controller
    self.view = backgroundView;
}

- (void)viewDidLoad
{
    // Always call the super implementation of viewDidLoad
    [super viewDidLoad];
    
    NSLog(@"HypnoViewController loaded its view");
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self drawHypnoticMessage:textField.text];
    
    textField.text = @"";
    
    
    
    [textField resignFirstResponder];
    
    return YES;
}

- (void)drawHypnoticMessage:(NSString *)message
{
    for (int i = 0; i < 20; i++) {
        UILabel *messageLabel = [[UILabel alloc] init];
        
        // Configure the label's colors and text
        messageLabel.backgroundColor = [UIColor clearColor];
        messageLabel.textColor = [UIColor blueColor];
        messageLabel.text = message;
        
        
        //NSString *tempText = textField.text;
        NSLog(@"Setting text to %@", message);
        
        
        
        
        
        // This method resizes the label, which will be relative
        // to the text that it is displaying
        [messageLabel sizeToFit];
        
        // Get a random x value that fits within the hypnosis view's width
        int width = self.view.bounds.size.width - messageLabel.bounds.size.width;
        int x = arc4random_uniform(width);
        
        // Get a random y value that fits within the hypnosis view's height
        int height = self.view.bounds.size.height - messageLabel.bounds.size.height;
        int y = arc4random_uniform(height);
        
        // Update the label's frame
        CGRect frame = messageLabel.frame;
        frame.origin = CGPointMake(x, y);
        messageLabel.frame = frame;
        
        // Add the label to the hierarchy
        [self.view addSubview:messageLabel];
        
        UIInterpolatingMotionEffect *motionEffect;
        motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.x"
                                                                       type:UIInterpolatingMotionEffectTypeTiltAlongHorizontalAxis];
        motionEffect.minimumRelativeValue = @-25;
        motionEffect.maximumRelativeValue = @25;
        [messageLabel addMotionEffect:motionEffect];
        
        motionEffect = [[UIInterpolatingMotionEffect alloc] initWithKeyPath:@"center.y"
                                                                       type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
        motionEffect.minimumRelativeValue = @-25;
        motionEffect.maximumRelativeValue = @25;
        [messageLabel addMotionEffect:motionEffect];
    }
}

@end
