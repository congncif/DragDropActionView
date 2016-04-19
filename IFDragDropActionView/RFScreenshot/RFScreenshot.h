//
//  RFScreenshot.h
//  RFScreenshot
//
//  Created by Ricardo Funk on 12/8/13.
//  Copyright (c) 2013 Ricardo Funk. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface RFScreenshot : NSObject

+(UIImage *) takeScreenshot:(UIView *)view;

@end
