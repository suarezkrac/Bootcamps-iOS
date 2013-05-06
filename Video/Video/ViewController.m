//
//  ViewController.m
//  Video
//
//  Created by trainer on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation ViewController

@synthesize reproductor;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
  
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"BigBuckBunny" ofType:@"mp4"];
    
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];
    
    reproductor = [[MPMoviePlayerController alloc] initWithContentURL:url];
    
    reproductor.view.frame = CGRectMake(10, 10, 300, 300);
    
    [self.view addSubview:reproductor.view];
    
    [reproductor play];
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
