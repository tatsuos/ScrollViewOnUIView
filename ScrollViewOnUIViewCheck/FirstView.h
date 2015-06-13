//
//  FirstView.h
//  ScrollViewOnUIViewCheck
//
//  Created by Tatsuo SAEKI on 2015/05/26.
//  Copyright (c) 2015年 Tatsuo SAEKI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstView : UIView

@property BOOL isFlag;

@property (weak, nonatomic) IBOutlet UIScrollView *_scrollView;
@property (weak, nonatomic) IBOutlet UIButton *_button;


@property (strong, nonatomic) IBOutlet NSLayoutConstraint *widthConstraint;

@end
