//
//  SourceDragItemView.m
//  IFDragDropActionView
//
//  Created by NGUYEN CHI CONG on 4/20/15.
//  Copyright (c) 2015 if. All rights reserved.
//

#import "SourceDragItemView.h"

@implementation SourceDragItemView

- (void)awakeFromNib{
    [super awakeFromNib];
    UILongPressGestureRecognizer *longPressGR = [[UILongPressGestureRecognizer alloc]initWithTarget:self action:@selector(longPressDetected:)];
    [self addGestureRecognizer:longPressGR];
}

/**-----------------------------------------------------------------**/
#pragma mark - Gesture
- (void)longPressDetected:(UILongPressGestureRecognizer *)gesture {
    CGPoint point = [gesture locationInView:self.superview];
    switch (gesture.state) {
        case UIGestureRecognizerStateBegan:
        {
            if ([self.delegate respondsToSelector:@selector(dragView:beginToPoint:)]) {
                [self.delegate dragView:self beginToPoint:point];
            }
        }
            break;
            
        case UIGestureRecognizerStateChanged: {
            if ([self.delegate respondsToSelector:@selector(dragView:moveToPoint:)]) {
                [self.delegate dragView:self moveToPoint:point];
            }
        }
            break;
            
        case UIGestureRecognizerStateEnded:
        {
            if ([self.delegate respondsToSelector:@selector(dragView:endToPoint:)]) {
                [self.delegate dragView:self endToPoint:point];
            }
        }
            break;
            
        default:
            break;
    }
}


@end
