//
//  DropZoneView.m
//  Mi Kart
//
//  Created by NGUYEN CHI CONG on 4/1/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import "DropZoneView.h"

@implementation DropZoneView

+ (id)newDragItem {
	id item = [[[NSBundle mainBundle]loadNibNamed:NSStringFromClass([self class]) owner:nil options:nil] firstObject];
	return item;
}

- (void)setFrame:(CGRect)frame {
	[super setFrame:frame];
	CAShapeLayer *shapeLayer = [CAShapeLayer layer];
	[shapeLayer setBounds:self.bounds];
	[shapeLayer setPosition:self.center];
	[shapeLayer setFillColor:[[UIColor clearColor] CGColor]];
	[shapeLayer setStrokeColor:[[UIColor whiteColor] CGColor]];
	[shapeLayer setLineWidth:2.0f];
	[shapeLayer setLineJoin:kCALineJoinRound];
	[shapeLayer setLineDashPattern:
	 [NSArray arrayWithObjects:[NSNumber numberWithInt:10],
	  [NSNumber numberWithInt:5], nil]];

	// Setup the path
	CGRect rrrect = self.bounds;

	rrrect.size.width = [UIScreen mainScreen].bounds.size.width;

	CGRect rect = UIEdgeInsetsInsetRect(rrrect, UIEdgeInsetsMake(10, 10, 10, 10));

	CGMutablePathRef path = CGPathCreateMutable();

	CGPathMoveToPoint(path, NULL, rect.origin.x, rect.origin.y);
	CGPathAddLineToPoint(path, NULL, rect.origin.x + rect.size.width, rect.origin.y);
	CGPathAddLineToPoint(path, NULL, rect.origin.x + rect.size.width, rect.origin.y + rect.size.height);
	CGPathAddLineToPoint(path, NULL, rect.origin.x, rect.origin.y + rect.size.height);
	CGPathAddLineToPoint(path, NULL, rect.origin.x, rect.origin.y);

	[shapeLayer setPath:path];
	CGPathRelease(path);

	[[self layer] addSublayer:shapeLayer];
}

- (void)layoutSubviews {
	[super layoutSubviews];
}

- (void)drawWithFrame:(CGRect)frame {
	self.frame = frame;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rectDraw {
	// Drawing code
}

@end
