//
//  AgregarViewController.h
//  ABM
//
//  Created by trainer on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AgregarViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UISwitch *swDebe;
- (IBAction)guardar:(id)sender;
- (IBAction)cancelar:(id)sender;

@end
