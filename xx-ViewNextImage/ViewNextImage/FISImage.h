//
//  FISImage.h
//  ViewNextImage
//
//  Created by Flatiron on 10/12/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISImage : NSObject

@property (nonatomic, strong) NSString *fileName;

-(instancetype)initWithfileName:(NSString *)fileName;


@end
