//
//  ViewController.m
//  IFDragDropActionView
//
//  Created by NGUYEN CHI CONG on 4/20/15.
//  Copyright (c) 2015 if. All rights reserved.
//

#import "ViewController.h"

#import "DragDropBackground.h"

@interface ViewController () <DropProtocol>

@property (strong, nonatomic) DragDropBackground *dragdropBGView;

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}

- (DragDropBackground *)dragdropBGView {
	if (!_dragdropBGView) {
		_dragdropBGView = [DragDropBackground sharedView];
	}
	_dragdropBGView.delegate = self;
	return _dragdropBGView;
}

/**-----------------------------------------------------------------**/
#pragma mark - ListItemDelegate
- (void)dragView:(UIView *)sourceView beginToPoint:(CGPoint)point {
	[self.dragdropBGView showInView:self.tabBarController.view complete: ^{
	    CGPoint pointX = [self.tabBarController.view convertPoint:point fromView:self.self.view];
	    [self.dragdropBGView setHitPoint:pointX animated:YES duration:0.25];
	}];

	CGPoint point1 = [self.tabBarController.view convertPoint:sourceView.center fromView:self.view];
	[self.dragdropBGView beginHitPoint:point1];
	//	DLog(@"BEGIN");
}

- (void)dragView:(UIView *)sourceView moveToPoint:(CGPoint)point {
	//	DLog(@"MOVE");
	CGPoint pointX = [self.tabBarController.view convertPoint:point fromView:self.view];
	[self.dragdropBGView setHitPoint:pointX animated:YES];
}

- (void)dragView:(UIView *)sourceView endToPoint:(CGPoint)point {
	//	DLog(@"END");
	CGPoint pointX = [self.tabBarController.view convertPoint:point fromView:self.view];
	[self.dragdropBGView endHitPoint:pointX];
}

/*-----------------------------------------------------------------------------------------*/
#pragma mark - Drop
- (void)dropViewToPerfromAction {
	[[[UIAlertView alloc]initWithTitle:@"Do action" message:@"You have do an action via Drag & Drop" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
}

@end
