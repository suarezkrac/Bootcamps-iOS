//
//  TestViewController.h
//  AplicacionAudio
//
//  Created by Giovanny Suarez on 5/12/12.
//  Copyright (c) 2012 Cymetria. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface TestViewController : UIViewController <AVAudioPlayerDelegate>
- (IBAction)play:(id)sender;
- (IBAction)pausa:(id)sender;
- (IBAction)stop:(id)sender;

- (IBAction)cambioVolumen:(id)sender;


@property (strong, nonatomic) IBOutlet UILabel *etiqueta;
@property (strong, nonatomic) AVAudioPlayer * reproductor;

@end
