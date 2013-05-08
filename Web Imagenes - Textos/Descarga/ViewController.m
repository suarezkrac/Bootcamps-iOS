//
//  ViewController.m
//  Descarga
//
//  Created by trainer on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize animacion;
@synthesize txtURL;
@synthesize txtLargo;
@synthesize imageView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setAnimacion:nil];
    [self setTxtURL:nil];
    [self setTxtLargo:nil];
    [self setImageView:nil];
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

- (IBAction)leerTexto:(id)sender {
    
    [animacion startAnimating];
    
    NSURL * url = [NSURL URLWithString:txtURL.text];
    
    NSString * datos = [[NSString alloc] initWithContentsOfURL:url encoding:NSUTF8StringEncoding error:nil];
    
    if (datos==nil) {
        txtLargo.text = @"NO SE PUDO LEER";
    } else {
        txtLargo.text = datos;
    }
    [txtURL resignFirstResponder];
    
    [animacion stopAnimating];
    
    
}

- (IBAction)leerImagen:(id)sender {
    
    [animacion startAnimating];
    
    NSURL * url = [NSURL URLWithString:txtURL.text];
    
    NSData * datos = [[NSData alloc] initWithContentsOfURL:url];
    UIImage *imagen = [[UIImage alloc] initWithData:datos];
    
    imageView.image = imagen;
    [animacion stopAnimating];

}




@end
