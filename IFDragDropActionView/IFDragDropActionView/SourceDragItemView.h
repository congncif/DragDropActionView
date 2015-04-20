//
//  SourceDragItemView.h
//  IFDragDropActionView
//
//  Created by NGUYEN CHI CONG on 4/20/15.
//  Copyright (c) 2015 if. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DragDropProtocol.h"

@interface SourceDragItemView : UIImageView

@property (nonatomic, weak) IBOutlet id<DragDropDelegate> delegate;

@end
