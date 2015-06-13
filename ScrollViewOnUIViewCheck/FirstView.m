//
//  FirstView.m
//  ScrollViewOnUIViewCheck
//
//  Created by Tatsuo SAEKI on 2015/05/26.
//  Copyright (c) 2015年 Tatsuo SAEKI. All rights reserved.
//

#import "FirstView.h"


@implementation FirstView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self._button.translatesAutoresizingMaskIntoConstraints = NO;

    // 制約を解除
    [self._scrollView removeConstraints:@[self.widthConstraint]];

    // 条件によって X 座標を変更する制約を付ける
    if (self.isFlag) {
        self.widthConstraint
        = [NSLayoutConstraint constraintWithItem:self._button
                                       attribute:NSLayoutAttributeLeft
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self._scrollView
                                       attribute:NSLayoutAttributeLeft
                                      multiplier:1
                                        constant:20];
        
    } else {
        self.widthConstraint
        = [NSLayoutConstraint constraintWithItem:self._button
                                       attribute:NSLayoutAttributeLeft
                                       relatedBy:NSLayoutRelationEqual
                                          toItem:self._scrollView
                                       attribute:NSLayoutAttributeLeft
                                      multiplier:1
                                        constant:120];
        
    }
    // 制約を再付与
    [self._scrollView addConstraints:@[self.widthConstraint]];
}

@end
