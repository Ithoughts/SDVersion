//
//  ViewController.m
//  SDiOSVersion
//
//  Copyright (c) 2015 Sebastian Dobrincu. All rights reserved.
//

#import "ViewController.h"
#import "SDVersion.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Get device name as NSString
    self.iphoneVersionLabel.text = [self.iphoneVersionLabel.text stringByAppendingString:DeviceVersionNames[[SDiOSVersion deviceVersion]]];

    // Get device size using string conversion
    self.iphoneSizeLabel.text = [self.iphoneSizeLabel.text stringByAppendingString:[NSString stringWithFormat:@"%@", DeviceSizeNames[[SDiOSVersion deviceSize]]]];
    
    // Check for device model
    if ([SDiOSVersion deviceVersion] == iPhone7)
        NSLog(@"You got the iPhone 7. Nice!");
    else if ([SDiOSVersion deviceVersion] == iPhone6SPlus)
        NSLog(@"You got the iPhone 6S Plus. Awesome device!");
    else if ([SDiOSVersion deviceVersion] == iPodTouch6Gen)
        NSLog(@"The latest iPod Touch. Cool! ❄️");
    
    // Check for device screen size
    if ([SDiOSVersion deviceSize] == Screen3Dot5inch)
        NSLog(@"Your screen is 3.5 inches");
    else if ([SDiOSVersion deviceSize] == Screen4inch)
        NSLog(@"Your screen size is 4 inches");
    else if([SDiOSVersion deviceSize] == Screen4Dot7inch)
        NSLog(@"Your screen size is 4.7 inches");
    else if([SDiOSVersion deviceSize] == Screen5Dot5inch)
        NSLog(@"Your screen size is 5.5 inches");
    
    if ([SDiOSVersion isZoomed]) {
        NSLog(@"Your device is in Zoom Mode!");
    }
    
    //Check for iOS Version
    if (iOSVersionGreaterThanOrEqualTo(@"10"))
        NSLog(@"You are running iOS 1️⃣0️⃣ or above!");
    else if (iOSVersionLessThanOrEqualTo(@"9.1"))
        NSLog(@"You're on iOS 9.1 or below! ⏳");
}


@end
