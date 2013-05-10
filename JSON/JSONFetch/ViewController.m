//
//  ViewController.m
//  JSONFetch
//
//  Created by Marin Todorov on 29/10/2012.
//  Copyright (c) 2012 Underplot ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    IBOutlet UILabel* label;
}
@end


@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    //1
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        //code executed in the background
        //2
        NSData* kivaData = [NSData dataWithContentsOfURL:
                            [NSURL URLWithString:@"http://gacko.co/json/json.php"]
                            ];
        //3
        NSDictionary* json = nil;
        if (kivaData) {
            json = [NSJSONSerialization
                    JSONObjectWithData:kivaData
                    options:kNilOptions
                    error:nil];
        }
        
        //4
        dispatch_async(dispatch_get_main_queue(), ^{
            //code executed on the main queue
            //5
            [self updateUIWithDictionary: json];
        });
        
    });

}

-(void)updateUIWithDictionary:(NSDictionary*)json {
    @try {
        NSString * cadena = @" ";
        NSString * valorJson; 
        for (int i = 0; i <= 1; i++)
        {
            valorJson = [NSString stringWithFormat:
            @"El %@ es un %@ de precio %@ en la categoria %@\n",
            json[@"articulos"][i][@"id"],
            json[@"articulos"][i][@"nombre"],
            json[@"articulos"][i][@"precio"],
            json[@"articulos"][i][@"categoria"],
            nil];
            
            cadena =  [cadena stringByAppendingString: valorJson];
            
           
        }
        label.text = [NSString stringWithFormat:
                      @"valores: %@ ",
                     cadena,
                      nil];
        
    }
    @catch (NSException *exception) {
        [[[UIAlertView alloc] initWithTitle:@"Error"
                                    message:@"Could not parse the JSON feed."
                                   delegate:nil
                          cancelButtonTitle:@"Close"
                          otherButtonTitles: nil] show];
        NSLog(@"Exception: %@", exception);
    }
}

@end
