//
//  FISImageCarousel.m
//  ViewNextImage
//
//  Created by Flatiron on 10/12/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import "FISImageCarousel.h"
#import "FISImage.h"

@implementation FISImageCarousel




-(instancetype)init
{
    self = [super init];
    
    if (self) {
        _images = [self generateImageObjects];
        _images = @[@"1.jpg", @"2.jpg", @"3.jpg"];
    }//
    
    return self;
}

// for png no extentions


- (NSMutableArray *)generateImageObjects
{    
    NSMutableArray *images = [[NSMutableArray alloc] init];
    
    [images addObject:[[FISImage alloc] initWithfileName:@"1.jpg"] ];
    [images addObject:[[FISImage alloc] initWithfileName:@"2.jpg"] ];
    [images addObject:[[FISImage alloc] initWithfileName:@"3.jpg"] ];
    
    return images;
}


//
//-(void)goToNextImage{
//    
//        for (NSUInteger i = 0; i < self.images.count; i++) {
//            FISImage *anImage = self.images[i + 1];
//        }
//}
//
//
//
//-(void)goToPreviousImage{
//}
//
//




@end











