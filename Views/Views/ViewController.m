//
//  ViewController.m
//  Views
//
//  Created by Flatiron on 10/8/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

// from story board, hold control and drag your UI thingy here:
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end



@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.label.text = @"Hello Class!";
    self.label.backgroundColor = [UIColor yellowColor];
    self.label.textColor = [UIColor blueColor];
    
    
    //label is a class
}




- (IBAction)buttonTapped:(UIButton *)sender {
    
    self.label.text = self.textField.text;
    
    NSLog(@"we've tapped the button");
//    self.label.text = @"Click me!";
    sender.backgroundColor = [UIColor blueColor];
}



@end
