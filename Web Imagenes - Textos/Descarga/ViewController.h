//
//  ViewController.h
//  Descarga
//
//  Created by trainer on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *animacion;
@property (strong, nonatomic) IBOutlet UITextField *txtURL;
@property (strong, nonatomic) IBOutlet UITextView *txtLargo;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
- (IBAction)leerTexto:(id)sender;
- (IBAction)leerImagen:(id)sender;

@end
