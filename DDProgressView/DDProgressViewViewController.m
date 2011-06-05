//
//  DDProgressViewViewController.m
//  DDProgressView
//
//  Created by Damien DeVille on 3/13/11.
//  Copyright 2011 Snappy Code. All rights reserved.
//

#import "DDProgressViewViewController.h"
#import "DDProgressView.h"

@implementation DDProgressViewViewController

- (void)dealloc
{
    [super dealloc] ;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning] ;
}

- (void)viewDidLoad
{
    testProgress = 0.0f ;
    progressDir = 1 ;
    
    [super viewDidLoad] ;
    
	[self.view setBackgroundColor: [UIColor blackColor]] ;
	
	progressView = [[DDProgressView alloc] initWithFrame: CGRectMake(20.0f, 140.0f, self.view.bounds.size.width-40.0f, 0.0f)] ;
	[progressView setOuterColor: [UIColor grayColor]] ;
	[progressView setInnerColor: [UIColor lightGrayColor]] ;
	[self.view addSubview: progressView] ;
	[progressView release] ;
    
    progressView2 = [[DDProgressView alloc] initWithFrame: CGRectMake(20.0f, 180.0f, self.view.bounds.size.width-40.0f, 0.0f)] ;
    [progressView2 setOuterColor: [UIColor clearColor]] ;
    [progressView2 setInnerColor: [UIColor lightGrayColor]] ;
    [progressView2 setEmptyColor: [UIColor darkGrayColor]] ;
    [self.view addSubview: progressView2] ;
    [progressView2 release] ;
	
	// set a timer that updates the progress
	NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval: 0.03f target: self selector: @selector(updateProgress) userInfo: nil repeats: YES] ;
	[timer fire] ;
}

- (void)updateProgress
{
	testProgress += (0.01f * progressDir) ;
	[progressView setProgress: testProgress] ;
    [progressView2 setProgress: testProgress] ;
    
    if (testProgress > 1 || testProgress < 0)
        progressDir *= -1 ;
}

- (void)viewDidUnload
{
    [super viewDidUnload] ;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
