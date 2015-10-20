//
//  ReminderViewController.h
//  HypnoWithText-Chap7
//
//  Created by William Smith on 10/12/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReminderViewController : UIViewController


@property (weak, readonly, nonatomic) IBOutlet UIDatePicker *datePicker;

- (IBAction)addReminder:(id)sender;

@end
