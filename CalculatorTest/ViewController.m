//
//  ViewController.m
//  CalculatorTest
//
//  Created by En on 13/1/6.
//  Copyright (c) 2013年 En. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    rectOriginal = viewTest.frame;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation))
    {
        viewTest.frame = CGRectMake(0, 0, self.view.frame.size.height, self.view.frame.size.width);
        NSLog(@"viewTest w:%f  h:%f",viewTest.frame.size.width,viewTest.frame.size.height);
        NSLog(@"label x:%f y:%f",label.frame.origin.x,label.frame.origin.y);
    }
    else
    {
        viewTest.frame = rectOriginal;
        NSLog(@"viewTest original w:%f  h:%f",viewTest.frame.size.width,viewTest.frame.size.height);
        NSLog(@"label x:%f y:%f",label.frame.origin.x,label.frame.origin.y);

    }
}

@end
