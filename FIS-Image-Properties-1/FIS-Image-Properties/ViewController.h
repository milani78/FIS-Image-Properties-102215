//
//  ViewController.h
//  FIS-Image-Properties
//
//  Created by Flatiron on 10/20/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//- (NSDictionary*) logMetaDataFromImage:(UIImage*)image;
- (void) logMetaDataFromURL:(NSURL*)URL;
- (void) logMetaDataFromImage:(UIImage*)image;

@end

