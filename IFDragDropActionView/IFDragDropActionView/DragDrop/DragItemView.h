//
//  DragItemView.h
//  Mi Kart
//
//  Created by NGUYEN CHI CONG on 4/1/15.
//  Copyright (c) 2015 NGUYEN CHI CONG. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DragItemView : UIView

+ (id)newDragItem;

@property (nonatomic, weak) IBOutlet UIImageView *imvItem;
@property (nonatomic, weak) IBOutlet UILabel *lbPrice;
@property (nonatomic, weak) IBOutlet UILabel *lbDescription;

@end
