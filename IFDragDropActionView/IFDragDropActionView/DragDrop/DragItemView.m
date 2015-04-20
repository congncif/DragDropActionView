//
//  DragItemView.m
//  Mi Kart
//
//  Created by NGUYEN CHI CONG on 4/1/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "DragItemView.h"

@implementation DragItemView

+ (id)newDragItem {
	id item = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] firstObject];
	return item;
}

- (void)awakeFromNib {
	[super awakeFromNib];
    self.layer.borderColor = [UIColor whiteColor].CGColor;
    self.layer.borderWidth = 2;
}

@end
