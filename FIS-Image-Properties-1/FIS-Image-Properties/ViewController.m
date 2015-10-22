//
//  ViewController.m
//  FIS-Image-Properties
//
//  Created by Flatiron on 10/20/15.
//  Copyright © 2015 Flatiron. All rights reserved.
//

#import "ViewController.h"
#import <CoreLocation/CoreLocation.h>
#import <ExternalAccessory/ExternalAccessory.h>
#import <UIKit/UIKit.h>
#import <ImageIO/CGImageProperties.h>
#import <AssetsLibrary/ALAsset.h>
#import <AssetsLibrary/ALAssetRepresentation.h>
#import <ImageIO/CGImageSource.h>
#import <ImageIO/ImageIO.h>




@interface ViewController ()
@property (nonatomic, strong) UIImage *image;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
//   UIImage *myImage = @selector(sea);
    
//   self.imageView.image = [UIImage imageNamed:@"1.jpg"];
    
    
    
    
    
    // image sea.jpg from asset folder:
    self.image = [UIImage imageNamed:@"sea.jpg"];
    
    NSData *dataOfImageFromAssets = UIImageJPEGRepresentation (self.image,0.5);
    NSLog(@"Image length:  %lu", (unsigned long)[dataOfImageFromAssets length]);
    
    CGFloat imageWidth = self.image.size.width;
    CGFloat imageHeight = self.image.size.height;
    NSLog(@"Image width: %f, image height: %f", imageWidth, imageHeight);
    

    
    
    // moca cat image:
    self.image = [UIImage imageNamed:@"moca.jpg"];
    NSData *dataMoca = UIImageJPEGRepresentation (self.image,0.5);

    [self logMetaDataFromImage:self.image];
    [self logMetaDataFromData:dataMoca];
    
  
    
    
    
    // a google map image, set to imageView2:
    
    NSURL *url = [NSURL URLWithString:@"https://storage.googleapis.com/static.panoramio.com/photos/medium/114911679.jpg"];
    
    NSData *data = [NSData dataWithContentsOfURL:url];
    UIImage *image = [UIImage imageWithData:data];
    [self logMetaDataFromData:data];
    [self logMetaDataFromImage:image];
    
    [self.imageView2 setImage:image];
    
    
    
    // a google image set to main image view
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        NSURL* url = [NSURL URLWithString:@"https://storage.googleapis.com/static.panoramio.com/photos/medium/114911679.jpg"];
//        [self logMetaDataFromURL:url];
//        NSData *data = [NSData dataWithContentsOfURL:url];
//    // [self logMetaDataFromData:data];
//    dispatch_async(dispatch_get_main_queue(), ^{
//        UIImage *image = [[UIImage alloc] initWithData:data];
//        self.image = image;
//        [self logMetaDataFromImage:image];
//        NSLog (@"image.imageOrientation %ld", (long)self.image.imageOrientation);
//    });
//    });
    
    
    
    
    // a new york times image
    
//    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//        NSURL* url = [NSURL URLWithString:@"http://static01.nyt.com/images/2015/10/21/t-magazine/21tmag-castle-t-slide-0EDQ/21tmag-castle-t-slide-0EDQ-superJumbo.jpg"];
//        [self logMetaDataFromURL:url];
//        NSData *data = [NSData dataWithContentsOfURL:url];
//        // [self logMetaDataFromData:data];
//        dispatch_async(dispatch_get_main_queue(), ^{
//            UIImage *image = [[UIImage alloc] initWithData:data];
//            self.image = image;
//            [self logMetaDataFromImage:image];
//            NSLog (@"image.imageOrientation %ld", (long)self.image.imageOrientation);
//        });
//    });
    
    
    
    
   
    
    
    
//    - (NSDictionary*) logMetaDataFromImage:(UIImage*)image
//    {
//        NSData *jpeg = [NSData dataWithData:UIImagePNGRepresentation(image, 1.0)];
//        CGImageSourceRef source = CGImageSourceCreateWithData((__bridge CFDataRef)jpeg, NULL);
//        CFDictionaryRef imageMetaData = CGImageSourceCopyPropertiesAtIndex(source,0,NULL);
//        NSLog (@"imageMetaData %@",imageMetaData);
//    }
//    
    
    
//    NSString* path = [NSBundle pathForResource:@"IMG_2379"
//                                        ofType:@"JPG"
//                                   inDirectory:[[NSBundle mainBundle] resourcePath]];
//    NSData *data = [NSData dataWithContentsOfFile:path];
//    [self logMetaDataFromData:data];
    
    
    
    
    
//    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
//    kCGImagePropertyGPSSpeed;
//    kCGImagePropertyGPSTrack;
    
    
//    NSData* jpegData =  UIImageJPEGRepresentation(self.image, 0.5);
    NSURL *urlOfImage = [[NSBundle mainBundle] URLForResource:@"IMG_20150822_121456" withExtension:@"jpg"];
    NSData *jpegData = [NSData dataWithContentsOfURL:urlOfImage];
    UIImage *theActualImage = [UIImage imageWithData:jpegData];
    
//    UIImage *moca = [UIImage imageNamed:@"IMG_20150822_121456"];
//    NSData *jpegData = UIImageJPEGRepresentation(moca, 0.5);
    CGImageSourceRef imageData= CGImageSourceCreateWithData((CFDataRef)jpegData, NULL);
    NSDictionary *metadata = (__bridge NSDictionary *)CGImageSourceCopyPropertiesAtIndex(imageData, 0, NULL);
    NSDictionary *exifGPSDictionary = [[metadata objectForKey:(NSString *)kCGImagePropertyGPSDictionary]mutableCopy];
    
    
    if(exifGPSDictionary) {
        NSLog(@"WOO! %@", exifGPSDictionary);
    }
    
//x    NSUInteger *latitude = [exifGPSDictionary objectForKey:kCGImagePropertyGPSLatitude];
    
    
    

    
    
    
    
// NSString *jennysPhoneNumber = [jenny objectForKey:@"phone_number"];
    
    
//    locationManager.location

  //  NSMetadataItemURLKey;
  //  NSMetadataItem;
    
}
    

-(NSDictionary *)locationInfoFromImageURL:(NSURL *)URL
{
    NSData *jpegData = [NSData dataWithContentsOfURL:URL];
    
    //    UIImage *moca = [UIImage imageNamed:@"IMG_20150822_121456"];
    //    NSData *jpegData = UIImageJPEGRepresentation(moca, 0.5);
    CGImageSourceRef imageData= CGImageSourceCreateWithData((CFDataRef)jpegData, NULL);
    NSDictionary *metadata = (__bridge NSDictionary *)CGImageSourceCopyPropertiesAtIndex(imageData, 0, NULL);
    NSDictionary *exifGPSDictionary = [metadata objectForKey:(NSString *)kCGImagePropertyGPSDictionary];
    
    return exifGPSDictionary;
}

     - (void) logMetaDataFromURL:(NSURL*)URL
    {
        NSLog(@" %@",NSStringFromSelector(_cmd));
        CGImageSourceRef source = CGImageSourceCreateWithURL((__bridge CFURLRef)URL, NULL);
        CFDictionaryRef imageMetaData = CGImageSourceCopyPropertiesAtIndex(source,0,NULL);
        NSLog (@"%@",imageMetaData);
    }



- (void) logMetaDataFromData:(NSData*)data
{
    NSLog(@" %@",NSStringFromSelector(_cmd));
    CGImageSourceRef source = CGImageSourceCreateWithData((__bridge CFDataRef)data, NULL);
    CFDictionaryRef imageMetaData = CGImageSourceCopyPropertiesAtIndex(source,0,NULL);
    NSLog (@"%@",imageMetaData);
}




- (void) logMetaDataFromImage:(UIImage*)image
{
    NSLog(@" %@",NSStringFromSelector(_cmd));
    NSData *jpegData = UIImageJPEGRepresentation(image, 1.0);
    CGImageSourceRef source = CGImageSourceCreateWithData((__bridge CFDataRef)jpegData, NULL);
    CFDictionaryRef imageMetaData = CGImageSourceCopyPropertiesAtIndex(source,0,NULL);
    NSLog (@"%@",imageMetaData);
}




@end
