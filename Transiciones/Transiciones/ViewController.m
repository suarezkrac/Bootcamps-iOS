//
//  ViewController.m
//  Transiciones
//
//  Created by Giovanny Suarez on 28/02/13.
//  Copyright (c) 2013 Cymetria. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize caja;

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

- (IBAction)animarConOpciones:(id)sender {
    [UIView animateWithDuration:3 delay:1 options:UIViewAnimationOptionRepeat | UIViewAnimationOptionAutoreverse animations:^{
        caja.alpha = 0;
    } completion:^(BOOL finished) {
        
    }];
    
}

- (IBAction)animarDoble:(id)sender {
    
    [UIView animateWithDuration:2 animations:^{
        caja.frame = CGRectMake(0, 0, 100, 100);
    } completion:^(BOOL finished){
        [UIView animateWithDuration:2 animations:^{
            caja.alpha= 0;
        }];
    }];
    
}

- (IBAction)animar:(id)sender {
    [UIView animateWithDuration:2 animations:^{
        //Animacion de caja
        caja.frame = CGRectMake(caja.frame.origin.x, caja.frame.origin.y, 50, 50);
        caja.alpha = 0.2;
        self.view.backgroundColor = [UIColor blueColor];
    }];
}
- (void)viewDidUnload {
    [self setCaja:nil];
    [super viewDidUnload];
}
@end
