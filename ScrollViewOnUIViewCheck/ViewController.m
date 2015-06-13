//
//  ViewController.m
//  ScrollViewOnUIViewCheck
//
//  Created by Tatsuo SAEKI on 2015/05/26.
//  Copyright (c) 2015年 Tatsuo SAEKI. All rights reserved.
//

#import "ViewController.h"
#import "FirstView.h"

@interface ViewController ()
{
    FirstView *fview;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    fview = (FirstView *)self.view;    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    [fview._scrollView setContentSize:CGSizeMake(320, 560)];
}

- (IBAction)change:(id)sender
{
    fview.isFlag = !fview.isFlag;
    
    [fview setNeedsLayout];
}

@end
