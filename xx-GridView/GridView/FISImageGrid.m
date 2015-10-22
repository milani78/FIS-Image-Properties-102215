//
//  FISImageGrid.m
//  GridView
//
//  Created by Flatiron on 10/8/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import "FISImageGrid.h"
#import "FISImage.h"

@implementation FISImageGrid


-(void)sortByTitle
{
 
}



-(void)sortByFileName
{
//    NSSortDescriptor *sortByNameAsc = [NSSortDescriptor sortDescriptorWithKey:self.imageDescriptionString
//                                                                    ascending:YES ];
//    
//    
//    NSMutableArray *sortedArrayOfImageObjects = [self.arrayOfImageObjects sortedArrayUsingDescriptors:@[sortByNameAsc]];
//    
//    // goal: sort images in the array
//    
//    for (FISImage *sortedImageObject in sortedArrayOfImageObjects) {
//        // do something
//    }
//    
    
}


-(FISImage *)imageForGridOrder:(NSUInteger)imageOrderNumber
{
    return nil;
}


-(instancetype)init
{
    self = [super init];
    
    if (self) {
    [self generateImageObjects];
        _text = [self imageDescriptionString];
    }
    
    return self;
}


// example:
//- (instancetype)init{
//    
//    self = [super init];
//    if (self) {
//        
//        _remainingCards = [[NSMutableArray alloc] init];
//        _dealtCards = [[NSMutableArray alloc] init];
//        [self generate52Cards];
//    }
//    
//    return self;
//}

-(NSString *)imageDescriptionString
{
    //    example to access another class object:
    //    FISCard *cardObjectAtIndexZero = self.cardsInHand[0];

    
    NSMutableString *formattedString = [[NSMutableString alloc] init];
    [formattedString appendFormat:@"1. %@", self.arrayOfImageObjects[0]];
    return formattedString;
}


- (NSMutableArray *)generateImageObjects
{
    NSMutableArray *arrayOfImageObjects = [[NSMutableArray alloc] init];
    
    [arrayOfImageObjects addObject:[[FISImage alloc] initWithTitle:@"image 1"
                                                          fileName:@"1.jpg"] ];
    
    [arrayOfImageObjects addObject:[[FISImage alloc] initWithTitle:@"image 2"
                                                          fileName:@"2.jpg"] ];
    
    [arrayOfImageObjects addObject:[[FISImage alloc] initWithTitle:@"image 3"
                                                          fileName:@"3.jpg"] ];
    
    [arrayOfImageObjects addObject:[[FISImage alloc] initWithTitle:@"image 4"
                                                          fileName:@"4.jpg"] ];
    
    [arrayOfImageObjects addObject:[[FISImage alloc] initWithTitle:@"image 5"
                                                          fileName:@"5.jpg"] ];
    
    [arrayOfImageObjects addObject:[[FISImage alloc] initWithTitle:@"image 6"
                                                          fileName:@"6.jpg"] ];
    
    return arrayOfImageObjects;
}


@end
