//
//  RFScreenshot.m
//  RFScreenshot
//
//  Created by Ricardo Funk on 12/8/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import "RFScreenshot.h"

@implementation RFScreenshot

+(UIImage *) takeScreenshot:(UIView *)view {
    
    //Take screenshot
    UIGraphicsBeginImageContext(view.bounds.size);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSData * data = UIImagePNGRepresentation(image);
    
    
    return [UIImage imageWithData:data];

}

@end
