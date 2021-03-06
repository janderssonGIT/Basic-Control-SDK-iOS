//
//  DRViewController.m
//  DoubleBasicHelloWorld
//
//  Created by David Cann on 8/3/13.
//  Edited by Jim Andersson on 25/5/2015

//  Copyright (c) 2013 Double Robotics, Inc. All rights reserved.
//

#import "DRViewController.h"
#import "DRCommands.h"
#import <DoubleControlSDK/DoubleControlSDK.h>

typedef NS_ENUM(NSUInteger, DRCommandType) {
    DRCommandWait = 0,
    DRCommandTypeForward = 1,
    DRCommandTypeBackward = 2,
    DRCommandTypeTurnRight90 = 3,
    DRCommandTypeTurnLeft90 = 4,
    DRCommandTypeTurnRight45 = 5,
    DRCommandTypeTurnLeft45 = 6,
    DRCommandTypeDeployKickstands = 7,
    DRCommandTypeRetractKickstands = 8,
};

@interface DRCommand : NSObject
@property DRCommandType type;
@property NSTimeInterval duration;
@end

@implementation DRCommand
@end

@interface DRViewController () <DRDoubleDelegate>
@property (weak, nonatomic) IBOutlet UILabel *commandNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *secondsRemainingLabel;

@property (strong, atomic) DRCommand* currentlyExecutingCommand;
@property (copy, atomic) NSNumber* currentCommandStarted;
@end

@implementation DRViewController

- (void)viewDidLoad {
	[super viewDidLoad];
	[DRDouble sharedDouble].delegate = self;
	NSLog(@"SDK Version: %@", kDoubleBasicSDKVersion);
    [self updateUI];
}
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation {
	return UIInterfaceOrientationIsPortrait(toInterfaceOrientation);
}

#pragma mark - Vanilla actions

- (IBAction)poleUp:(id)sender {
	[[DRDouble sharedDouble] poleUp];
}

- (IBAction)poleStop:(id)sender {
	[[DRDouble sharedDouble] poleStop];
}

- (IBAction)poleDown:(id)sender {
	[[DRDouble sharedDouble] poleDown];
}

- (IBAction)kickstandsRetract:(id)sender {
	[[DRDouble sharedDouble] retractKickstands];
}

- (IBAction)kickstandsDeploy:(id)sender {
	[[DRDouble sharedDouble] deployKickstands];
}

- (IBAction)startTravelData:(id)sender {
	[[DRDouble sharedDouble] startTravelData];
}

- (IBAction)stopTravelData:(id)sender {
	[[DRDouble sharedDouble] stopTravelData];
}

#pragma mark - Customized driving functions

- (void)switchToggled:(id)sender {
    UISwitch *mySwitch = (UISwitch *)sender;
    if ([mySwitch isOn]) {
        onOff.text = [NSString stringWithFormat:@"On"];
      
            NSLog(@"Initializing commands..");
           [self loadCommands];
        
    } else {
        onOff.text = [NSString stringWithFormat:@"Off"];
        self.commandNameLabel.text = @" ";
        //fix a reset for loadCommands
    }
}

- (void)loadCommands
{
    //The following code was generated by our DSL language, after interpretating the syntax.
    //No method implemented in order to receive the generated code in a bundle, this is however not necessary for this thesis-project.
	
    DRCommand *C1 = [[DRCommand alloc] init];
    C1.duration = 5.0;
    C1.type = DRCommandTypeRetractKickstands;
    
    DRCommand *C2 = [[DRCommand alloc] init];
    C2.duration = 1.0;
    C2.type = DRCommandWait;
    
    DRCommand *C3 = [[DRCommand alloc] init];
    C3.duration = 3.0;
    C3.type = DRCommandTypeForward;
    
    DRCommand *C4 = [[DRCommand alloc] init];
    C4.duration = 3.0;
    C4.type = DRCommandWait;
    
    DRCommand *C5 = [[DRCommand alloc] init];
    C5.duration = 3.0;
    C5.type = DRCommandTypeForward;
    
    DRCommand *C6 = [[DRCommand alloc] init];
    C6.duration = 3.0;
    C6.type = DRCommandWait;
    
    DRCommand *C7 = [[DRCommand alloc] init]; 
    C7.duration = 0.27;
    C7.type = DRCommandTypeTurnLeft90;
    
    DRCommand *C8 = [[DRCommand alloc] init];
    C8.duration = 3.0;
    C8.type = DRCommandWait;
    
    DRCommand *C9 = [[DRCommand alloc] init];
    C9.duration = 3.0;
    C9.type = DRCommandTypeForward;
    
    DRCommand *C10 = [[DRCommand alloc] init];
    C10.duration = 3.0;
    C10.type = DRCommandWait;
    
    DRCommand *C11 = [[DRCommand alloc] init]; 
    C11.duration = 0.27;
    C11.type = DRCommandTypeTurnLeft90;
    
    DRCommand *C12 = [[DRCommand alloc] init];
    C12.duration = 3.0;
    C12.type = DRCommandWait;
    
    DRCommand *C13 = [[DRCommand alloc] init];
    C13.duration = 3.0;
    C13.type = DRCommandTypeForward;
    
    DRCommand *C14 = [[DRCommand alloc] init];
    C14.duration = 3.0;
    C14.type = DRCommandWait;
    
    DRCommand *C15 = [[DRCommand alloc] init];
    C15.duration = 0.27;
    C15.type = DRCommandTypeTurnLeft90;
    
    DRCommand *C16 = [[DRCommand alloc] init];
    C16.duration = 3.0;
    C16.type = DRCommandWait;
    
    DRCommand *C17 = [[DRCommand alloc] init];  
    C17.duration = 3.2;
    C17.type = DRCommandTypeForward;
    
    DRCommand *C18 = [[DRCommand alloc] init];
    C18.duration = 3.0;
    C18.type = DRCommandWait;
    
    DRCommand *C19 = [[DRCommand alloc] init]; 
    C19.duration = 0.27;
    C19.type = DRCommandTypeTurnLeft90;
    
    DRCommand *C20 = [[DRCommand alloc] init];
    C20.duration = 3.0;
    C20.type = DRCommandWait;
    
    DRCommand *C21 = [[DRCommand alloc] init];
    C21.duration = 3.5;
    C21.type = DRCommandTypeBackward;
    
    DRCommand *C22 = [[DRCommand alloc] init];
    C22.duration = 3.0;
    C22.type = DRCommandWait;
    
    DRCommand *C23 = [[DRCommand alloc] init];
    C23.duration = 1.0;
    C23.type = DRCommandTypeBackward;
    
    DRCommand *C24 = [[DRCommand alloc] init];
    C24.duration = 4.0;
    C24.type = DRCommandTypeDeployKickstands;
    
    [self handleCommands: @[ C1, C2, C3, C4, C5, C6, C7, C8, C9, C10,
                             C11, C12, C13, C14, C15, C16, C17, C18,
                             C19, C20, C21, C22, C23, C24 ]];
}

#pragma mark - Customized

- (void)handleCommands: (NSArray*)commands
{
    commands = [commands copy];
    
    // Workhorse queue
    dispatch_queue_t execQueue = dispatch_queue_create(NULL, DISPATCH_QUEUE_SERIAL);
    //Target main queue
    dispatch_set_target_queue(execQueue, dispatch_get_main_queue());
    
    // Queue to serve commands one at a time
    dispatch_queue_t latchQueue = dispatch_queue_create(NULL, DISPATCH_QUEUE_SERIAL);
    // Target execQueue
    dispatch_set_target_queue(latchQueue, execQueue);
    
    // Timer
    dispatch_source_t mytimer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_get_main_queue());
    dispatch_source_set_timer(mytimer, DISPATCH_TIME_NOW, (1.0/60.0) * NSEC_PER_SEC, (1.0/30.0) * NSEC_PER_SEC);
    dispatch_source_set_event_handler(mytimer, ^{ [self updateUI]; });
    
    dispatch_suspend(latchQueue);
    
    // Start UI updates
    dispatch_async(latchQueue, ^{ dispatch_resume(mytimer); });
    
    // Add each command in the array to the queue
    for (DRCommand* cmd in commands)
    {
        dispatch_async(latchQueue, ^{
            // Stop the queue from processing other commands.
            dispatch_suspend(latchQueue);
            
            // Update the "machine state"
            self.currentlyExecutingCommand = cmd;
            self.currentCommandStarted = @([NSDate timeIntervalSinceReferenceDate]);
            
            // Set up the event that'll mark the end of the command.
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(cmd.duration * NSEC_PER_SEC)), execQueue, ^{
                // Clear out the machine state for the next command
                self.currentlyExecutingCommand = nil;
                self.currentCommandStarted = nil;
                
                // Resume the latch queue so that the next command starts
                dispatch_resume(latchQueue);
            });
        });
    }
    // After all the commands have finished being added, add a cleanup block to stop the timer, and update the UI.
    dispatch_async(latchQueue, ^{
        dispatch_source_cancel(mytimer);
        [self updateUI];
    });
    
    // Start the command queue
    dispatch_resume(latchQueue);
}

- (void)updateUI
{

    if (![NSThread isMainThread])
    {
        dispatch_async(dispatch_get_main_queue(), ^{ [self updateUI]; });
        return;
    }
    
    DRCommand* currentCmd = self.currentlyExecutingCommand;
    switch (currentCmd.type)
    {
        case DRCommandWait:
            self.commandNameLabel.text = @"Idle";
            break;
        case DRCommandTypeForward:
            self.commandNameLabel.text = @"Forward";
            break;
        case DRCommandTypeBackward:
            self.commandNameLabel.text = @"Backward";
            break;
        case DRCommandTypeTurnRight90:
            self.commandNameLabel.text = @"TurnRight90";
            break;
        case DRCommandTypeTurnLeft90:
            self.commandNameLabel.text = @"TurnLeft90";
            break;
        case DRCommandTypeTurnRight45:
            self.commandNameLabel.text = @"TurnRight45";
            break;
        case DRCommandTypeTurnLeft45:
            self.commandNameLabel.text = @"TurnRight45";
            break;
        case DRCommandTypeDeployKickstands:
            self.commandNameLabel.text = @"Deploys..";
            break;
        case DRCommandTypeRetractKickstands:
            self.commandNameLabel.text = @"Retracts..";
            break;
    }
    
    NSNumber* startTime = self.currentCommandStarted;
    if (!startTime || !currentCmd)
    {
        self.secondsRemainingLabel.text = @"";
    }
    else
    {
        const NSTimeInterval startTimeDbl = startTime.doubleValue;
        const NSTimeInterval currentTime = [NSDate timeIntervalSinceReferenceDate];
        const NSTimeInterval duration = currentCmd.duration;
        const NSTimeInterval remaining = MAX(0, startTimeDbl + duration - currentTime);
        self.secondsRemainingLabel.text = [NSString stringWithFormat: @"%1.3g", remaining];
    }
}

#pragma mark - DRDoubleDelegate

- (void)doubleDidConnect:(DRDouble *)theDouble {
	statusLabel.text = @"Connected";
}

- (void)doubleDidDisconnect:(DRDouble *)theDouble {
	statusLabel.text = @"Not Connected";
}

- (void)doubleStatusDidUpdate:(DRDouble *)theDouble {
	poleHeightPercentLabel.text = [NSString stringWithFormat:@"%f", [DRDouble sharedDouble].poleHeightPercent];
	kickstandStateLabel.text = [NSString stringWithFormat:@"%d", [DRDouble sharedDouble].kickstandState];
	batteryPercentLabel.text = [NSString stringWithFormat:@"%f", [DRDouble sharedDouble].batteryPercent];
	batteryIsFullyChargedLabel.text = [NSString stringWithFormat:@"%d", [DRDouble sharedDouble].batteryIsFullyCharged];
	firmwareVersionLabel.text = [DRDouble sharedDouble].firmwareVersion;
	serialLabel.text = [DRDouble sharedDouble].serial;
}

- (void)doubleDriveShouldUpdate:(DRDouble *)theDouble {

    float drive = (driveForwardButton.highlighted) ? kDRDriveDirectionForward : ((driveBackwardButton.highlighted) ? kDRDriveDirectionBackward : kDRDriveDirectionStop);
    float turn = (driveRightButton.highlighted) ? 1.0 : ((driveLeftButton.highlighted) ? -1.0 : 0.0);
    [theDouble drive:drive turn:turn];
    
    DRCommand* runningCmd = self.currentlyExecutingCommand;
    
    if(runningCmd.type == DRCommandTypeForward) {
        [theDouble variableDrive:(float)1.0 turn:(float)0.0];
    }
    if(runningCmd.type == DRCommandTypeBackward) {
        [theDouble variableDrive:(float)-1.0 turn:(float)0.0];
    }
    if(runningCmd.type == DRCommandTypeTurnLeft90) {
        [[DRDouble sharedDouble] turnByDegrees:87.0];
    }
    if(runningCmd.type == DRCommandTypeTurnRight90) {
        [[DRDouble sharedDouble] turnByDegrees:-87.0];
    }
    if(runningCmd.type == DRCommandTypeTurnLeft45) {
        [[DRDouble sharedDouble] turnByDegrees:45.0];
    }
    if(runningCmd.type == DRCommandTypeTurnRight45) {
        [[DRDouble sharedDouble] turnByDegrees:-45.0];
    }
    if(runningCmd.type == DRCommandTypeDeployKickstands) {
        [[DRDouble sharedDouble] deployKickstands];
    }
    if(runningCmd.type == DRCommandTypeRetractKickstands ) {
        [[DRDouble sharedDouble] retractKickstands];
    }
  
}

- (void)doubleTravelDataDidUpdate:(DRDouble *)theDouble {
	leftEncoderLabel.text = [NSString stringWithFormat:@"%.02f", [leftEncoderLabel.text floatValue] + [DRDouble sharedDouble].leftEncoderDeltaInches];
	rightEncoderLabel.text = [NSString stringWithFormat:@"%.02f", [rightEncoderLabel.text floatValue] + [DRDouble sharedDouble].rightEncoderDeltaInches];
	NSLog(@"Left Encoder: %f, Right Encoder: %f", theDouble.leftEncoderDeltaInches, theDouble.rightEncoderDeltaInches);
}

@end
