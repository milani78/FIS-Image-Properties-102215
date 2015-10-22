//
//  FISImage.h
//  GridView
//
//  Created by Flatiron on 10/8/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISImage : NSObject

@property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *fileName;


-(instancetype)initWithTitle:(NSString *)title fileName:(NSString *)fileName;
-(instancetype)init;


@end
