//
//  ViewController.h
//  Transiciones
//
//  Created by Giovanny Suarez on 28/02/13.
//  Copyright (c) 2013 Cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *caja;

- (IBAction)animarConOpciones:(id)sender;
- (IBAction)animarDoble:(id)sender;
- (IBAction)animar:(id)sender;

@end
