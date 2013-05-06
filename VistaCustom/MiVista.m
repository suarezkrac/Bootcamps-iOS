//
//  MiVista.m
//  VistaCustom
//
//  Created by trainer on 10/23/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "MiVista.h"

@implementation MiVista

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect
{
    [[UIColor redColor] set];
    
    NSString * texto = @"Hola desde mi View";
    [texto drawAtPoint: CGPointMake(20, 80) withFont:[UIFont systemFontOfSize:17]];
    
    UIImage * imagen = [UIImage imageNamed:@"apple"];
    [imagen drawAtPoint:CGPointMake(x, y)];
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    if ([touches count]==1) {
        UITouch * toque = [touches anyObject];
        
        x=[toque locationInView: self].x;
        y=[toque locationInView: self].y;
        
        [self setNeedsDisplay];
        
    } else {
        NSLog(@"Hay %i toques", [touches count]);
        NSArray * todos = [touches allObjects];
        
        for (UITouch * toque in todos) {
            NSLog(@"Hay toque en %f %f", [toque locationInView: self].x, [toque locationInView: self].y);           
        }
        
    }
    
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    [self touchesBegan:touches withEvent:event];
}


@end
