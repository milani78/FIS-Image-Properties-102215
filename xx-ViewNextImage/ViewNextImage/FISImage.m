//
//  FISImage.m
//  ViewNextImage
//
//  Created by Flatiron on 10/12/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import "FISImage.h"

@implementation FISImage


-(instancetype)initWithfileName:(NSString *)fileName
{
    self = [super init];
    
    if (self){
        _fileName = fileName;
    }
    
    return self;
}



-(instancetype)init
{
    self = [self initWithfileName:@""];
    return self;
}


@end
