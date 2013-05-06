//
//  AgregarViewController.m
//  ABM
//
//  Created by trainer on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "AgregarViewController.h"
#import "Cliente.h"
#import "RepositorioClientes.h"

@implementation AgregarViewController
@synthesize txtNombre;
@synthesize swDebe;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (IBAction)guardar:(id)sender {
    if ([txtNombre.text length]<3) {
        UIAlertView * alerta = [[UIAlertView alloc] initWithTitle:@"Error" message:@"El nombre debe tener al menos 3 letras" delegate:nil cancelButtonTitle:@"Aceptar" otherButtonTitles: nil];
        [alerta show];
    } else {
        Cliente * cliente = [[Cliente alloc] init];
        cliente.nombre = txtNombre.text;
        cliente.debeDinero = swDebe.on;
        
        NSMutableArray * clientes = [RepositorioClientes sharedInstance].clientes;
        [clientes addObject: cliente];
        
        [self dismissModalViewControllerAnimated:YES];
    }
}

- (IBAction)cancelar:(id)sender {
    [self dismissModalViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [self setTxtNombre:nil];
    [self setSwDebe:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


@end
