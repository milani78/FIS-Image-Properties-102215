//
//  ViewController.m
//  ViewNextImage
//
//  Created by Flatiron on 10/12/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import "ViewController.h"
#import "FISImageCarousel.h"
#import "FISImage.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@property (nonatomic, strong) FISImageCarousel *carousel;

@end



@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

   self.imageView.image = [UIImage imageNamed:@"1.jpg"];
    
//    self.nameLabel.text = self.nameToDisplay;
//    UIImage *imageOfPerson = [UIImage imageNamed:self.photoToDisplay];
//    self.imageView.image = imageOfPerson;

}

//page view controller

//- (IBAction)nextButtonPressed:(UIButton *)sender {
//    
//    ViewController
//
//    for ( FISImage *anImage in self.carousel.images) {
//        <#statements#>
//    }
////    for (NSUInteger i = 0; i < self.carousel.images.count; i++) {
////        if(i >= 1)
////        {
////            i=i-1;
////            self.imageView.image= [self.carousel.images objectAtIndex:i];
////        }
////    }
//}


- (IBAction)previousButtonPressed:(UIButton *)sender {
    
    for (NSUInteger i = 0; i < self.carousel.images.count; i++) {
        if (i < (self.carousel.images.count-1))
        {
            i=i+1;
            self.imageView.image= [self.carousel.images objectAtIndex:i];
        }
    }
}


@end
