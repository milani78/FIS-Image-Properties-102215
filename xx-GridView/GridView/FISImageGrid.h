//
//  FISImageGrid.h
//  GridView
//
//  Created by Flatiron on 10/8/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FISImage.h"

@interface FISImageGrid : NSObject

@property (nonatomic, strong) NSMutableArray *arrayOfImageObjects;
@property (nonatomic, strong) NSString *text;


-(void)sortByTitle;
-(void)sortByFileName;
-(FISImage *)imageForGridOrder:(NSUInteger)imageOrderNumber;
-(instancetype)init;
-(NSString *)imageDescriptionString;

@end
