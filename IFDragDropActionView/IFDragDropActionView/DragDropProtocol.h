//
//  DragDropProtocol.h
//  IFDragDropActionView
//
//  Created by NGUYEN CHI CONG on 4/20/15.
//  Copyright (c) 2015 if. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DragDropDelegate <NSObject>

@optional
- (void)dragView:(UIView *)sourceView beginToPoint:(CGPoint)point;
- (void)dragView:(UIView *)sourceView moveToPoint:(CGPoint)point;
- (void)dragView:(UIView *)sourceView endToPoint:(CGPoint)point;
- (void)dragView:(UIView *)sourceView;

@end
