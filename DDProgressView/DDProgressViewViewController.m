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
    [super viewDidLoad] ;
    
	[self.view setBackgroundColor: [UIColor blackColor]] ;
	
	progressView = [[DDProgressView alloc] initWithFrame: CGRectMake(20.0f, 140.0f, self.view.bounds.size.width-40.0f, 0.0f)] ;
	[progressView setOuterColor: [UIColor grayColor]] ;
	[progressView setInnerColor: [UIColor lightGrayColor]] ;
	[self.view addSubview: progressView] ;
	[progressView release] ;
	
	// set a timer that updates the progress
	NSTimer *timer = [NSTimer scheduledTimerWithTimeInterval: 0.03f target: self selector: @selector(updateProgress) userInfo: nil repeats: YES] ;
	[timer fire] ;
}

- (void)updateProgress
{
	float progress = progressView.progress ;
	[progressView setProgress: progress + 0.01f] ;
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
