//
//  Person.m
//  iOS9-MemoryManagement
//
//  Created by Paul Solt on 11/13/19.
//  Copyright © 2019 Lambda, Inc. All rights reserved.
//

#import "Person.h"
#import "Car.h"
#import "LSILog.h"

@implementation Person

- (instancetype)initWithCar:(Car *)car {
	self = [super init];
	if (self) {

        // TODO: Implement initWithCar with MRC
        _car = [car retain]; // Establishes ownership, +1 retain count of car

		NSLog(@"Person.init: %@", _car);
	}
	return self;
}

- (void)dealloc {
	NSLog(@"Person.dealloc: %@", _car);

    // TODO: Implement dealloc with MRC (order is important)
	[_car release];
	_car = nil;


	[super dealloc];
}

// TODO: Implement setCar with MRC
- (void)setCar:(Car *)car {
	if (car != _car) {
	[_car release];
    _car = [car retain];
}
}
@end
