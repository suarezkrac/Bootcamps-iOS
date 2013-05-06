//
//  DetailViewController.h
//  ABM
//
//  Created by trainer on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Cliente;

@interface DetailViewController : UIViewController

@property (strong, nonatomic) Cliente * cliente;
@property (strong, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@property (strong, nonatomic) IBOutlet UITextField *txtNombre;
@property (strong, nonatomic) IBOutlet UISwitch *swDebe;

@end
