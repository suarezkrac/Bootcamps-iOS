//
//  DetailViewController.m
//  ABM
//
//  Created by trainer on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "DetailViewController.h"
#import "Cliente.h"

@interface DetailViewController ()
- (void)configureView;
@end

@implementation DetailViewController

@synthesize cliente;

@synthesize detailDescriptionLabel = _detailDescriptionLabel;
@synthesize txtNombre;
@synthesize swDebe;

#pragma mark - Managing the detail item




- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	txtNombre.text = cliente.nombre;
    swDebe.on = cliente.debeDinero;
    
}

- (void)viewDidUnload
{
    [self setTxtNombre:nil];
    [self setSwDebe:nil];
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
    cliente.nombre = txtNombre.text;
    cliente.debeDinero = swDebe.on;
    
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
