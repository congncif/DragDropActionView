//
//  DragDropBackground.h
//  Mi Kart
//
//  Created by NGUYEN CHI CONG on 4/1/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DropZoneView;
@interface DragDropBackground : UIView

@property (nonatomic, strong) DropZoneView *dropZoneView;
@property (nonatomic, strong) UIView *customItemView;
@property (nonatomic, readonly) CGPoint hitPoint;

+ (id)sharedView;

- (void)showInView:(UIView *)view;
- (void)showInView:(UIView *)view complete:(void(^)(void))complation;
- (void)dismiss;

- (void)setHitPoint:(CGPoint)hitPoint animated:(BOOL)animated duration:(NSTimeInterval)time;
- (void)setHitPoint:(CGPoint)hitPoint animated:(BOOL)animated;
- (void)beginHitPoint:(CGPoint)point;
- (void)endHitPoint:(CGPoint)point;

@end
