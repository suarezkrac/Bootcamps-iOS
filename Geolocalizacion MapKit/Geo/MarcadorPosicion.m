//
//  MarcadorPosicion.m
//  Geo
//
//  Created by Giovanny Suarez on 28/02/13.
//  Copyright (c) 2013 Cymetria. All rights reserved.
//

#import "MarcadorPosicion.h"

@implementation MarcadorPosicion

@synthesize coordenada;

-(CLLocationCoordinate2D) coordinate {
    return  coordenada;
}

-(NSString *)title{
    return @"Aqui estamos";
}

-(NSString *)subtitle{
    return @"Posicion encontrada por tu equipo";
}

@end
