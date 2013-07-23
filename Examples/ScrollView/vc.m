//
//  vc.m
//  iOS Examples
//
//  Created by wesley de groot on 30-11-12.
//  Copyright (c) 2012 WDG.P. All rights reserved.
//

#import "vc.h"

@interface TestViewController ()

@end

@implementation TestViewController
@synthesize sview, scrollview;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    scrollview.contentSize = CGSizeMake(sview.frame.size.width, sview.frame.size.height); //make the view scrollable
    
    [scrollview addSubview:sview]; //add the view to the scrollview
    [scrollview setAutoresizingMask:UIViewAutoresizingFlexibleHeight]; //enable scrolling.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
