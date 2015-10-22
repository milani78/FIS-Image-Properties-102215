//
//  ViewController.m
//  GridView
//
//  Created by Flatiron on 10/8/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *topImage;
@property (weak, nonatomic) IBOutlet UIImageView *middleImage;
@property (weak, nonatomic) IBOutlet UIImageView *bottomImage;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)shuffleImagesButton:(UIButton *)sender {
    
    // goal: shuffle images using random number generator
}



@end
