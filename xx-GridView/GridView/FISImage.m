//
//  FISImage.m
//  GridView
//
//  Created by Flatiron on 10/8/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import "FISImage.h"

@implementation FISImage


-(instancetype)initWithTitle:(NSString *)title fileName:(NSString *)fileName
{
    self = [super init];
    
    if (self){
        _title = title;
        _fileName = fileName;
    }
    
    return self;
}



-(instancetype)init
{
    self = [self initWithTitle:@"" fileName:@""];
    return self;
}



@end
