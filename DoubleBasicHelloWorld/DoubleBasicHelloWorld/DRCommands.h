//
//  DRCommands.h
//  DoubleBasicHelloWorld
//
//  Created by Jim Andersson on 2015-25-05.
//  Copyright (c) 2015 Double Robotics, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DRCommands : NSObject
{
    int timing;
    int type;
    int queueNr;
}

@property(nonatomic, readwrite) int timing;
@property(nonatomic, readwrite) int type;
@property(nonatomic, readwrite) int queueNr;

@end


