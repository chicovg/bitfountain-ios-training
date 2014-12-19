//
//  VGViewController.m
//  MyFirstApplication
//
//  Created by Victor Guthrie on 8/24/14.
//  Copyright (c) 2014 chicovg. All rights reserved.
//

#import "VGViewController.h"

@interface VGViewController ()

@end

@implementation VGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(UIButton *)sender
{
    self.titleLabel.text = @"Hello Class";
}
@end
