//
//  TestViewController.m
//  AplicacionAudio
//
//  Created by Giovanny Suarez on 5/12/12.
//  Copyright (c) 2012 Cymetria. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController
@synthesize etiqueta;
@synthesize reproductor;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSError * error;
    NSString * ruta = [[NSBundle mainBundle] pathForResource:@"musica" ofType:@"mp3"];
    NSURL * url = [[NSURL alloc] initFileURLWithPath:ruta];

    self.reproductor = [[AVAudioPlayer alloc] initWithContentsOfURL:url error: &error];
    self.reproductor.pan = 0.5;
    self.reproductor.enableRate = YES;
    self.reproductor.rate = 1;
    self.reproductor.numberOfLoops = -1;
    self.reproductor.volume = 1;
    self.reproductor.delegate = self;
    
    [self.reproductor prepareToPlay];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)play:(id)sender {
    [self.reproductor play];
}

- (IBAction)pausa:(id)sender {
    etiqueta.text = [[NSString alloc] initWithFormat:@"duracion: %f, currentTime %f", self.reproductor.duration, self.reproductor.currentTime ];
    
    [self.reproductor pause];
}

- (IBAction)stop:(id)sender {
    [self.reproductor stop];
}

- (IBAction)cambioVolumen:(id)sender {
    self.reproductor.volume = ((UISlider *) sender).value;
    
}
- (void)dealloc {
    [etiqueta release];
    [super dealloc];
}
- (void)viewDidUnload {
    [self setEtiqueta:nil];
    [super viewDidUnload];
}
@end
