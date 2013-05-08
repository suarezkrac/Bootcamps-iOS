//
//  ViewController.h
//  Navegador
//
//  Created by Giovanny Suarez on 17/03/13.
//  Copyright (c) 2013 Cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIWebView *navegador;
@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *cargando;
- (IBAction)leerHTML:(id)sender;
- (IBAction)ejecutarJS:(id)sender;
- (IBAction)leerWeb:(id)sender;
- (IBAction)leerPDF:(id)sender;



@end
