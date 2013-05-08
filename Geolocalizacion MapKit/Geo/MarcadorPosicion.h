//
//  MarcadorPosicion.h
//  Geo
//
//  Created by Giovanny Suarez on 28/02/13.
//  Copyright (c) 2013 Cymetria. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface MarcadorPosicion : NSObject <MKAnnotation>

@property CLLocationCoordinate2D coordenada;

@end
