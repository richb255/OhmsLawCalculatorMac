//
//  AppDelegate.m
//  OhmsLawCalculator
//
//  Created by Richard Buttars on 6/22/15.
//  Copyright (c) 2015 Richard Buttars. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

- (void) CalcCurrent;
- (void) CalcVoltage;
- (void) ClrEntries;
- (void) CalcResistance;

@property (weak) IBOutlet NSWindow *window;
@end


@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)ClearEntries:(id)sender {
//    _voltageBox.stringValue = @"";
//    _currentBox.stringValue = @"";
//    _resistanceBox.stringValue = @"";
    [self ClrEntries];
}

- (IBAction)CalculateResistance:(id)sender {
/*    double current = _currentBox.doubleValue;
    double voltage = _voltageBox.doubleValue;
    
    
    double resistance = voltage / current;
    
    if(1 == _ohmsRadio.integerValue){
        
    }else if(1 == _kiloOhmsRadio.integerValue){
        if((resistance / 1000.0) > 1.0){
            resistance /= 1000.0;
        }
        
    }else if(1 == _megaOhmsRadio.integerValue){
        if((resistance / 1000000.0) > 1.0){
            resistance /= 1000000.0;
        }
    }
    
    _resistanceBox.doubleValue = resistance;
*/
    [self CalcResistance];
}

- (IBAction)CalculateCurrent:(id)sender {
/*    double voltage = _voltageBox.doubleValue;
    double resistance = _resistanceBox.doubleValue;
    
    if(1 == _ohmsRadio.integerValue){
        
    }else if(1 == _kiloOhmsRadio.integerValue){
            resistance *= 1000.0;
        
    }else if(1 == _megaOhmsRadio.integerValue){
            resistance *= 1000000.0;
    }

    double current = voltage / resistance;
    
    _currentBox.doubleValue = current;
*/
    [self CalcCurrent];
}

- (IBAction)CalculateVoltage:(id)sender {
/*    double current = _currentBox.doubleValue;
    double resistance = _resistanceBox.doubleValue;
    
    if(1 == _ohmsRadio.integerValue){
        
    }else if(1 == _kiloOhmsRadio.integerValue){
            resistance *= 1000.0;
    }else if(1 == _megaOhmsRadio.integerValue){
            resistance *= 1000000.0;

    }
    
    double voltage = current * resistance;
    
    _voltageBox.doubleValue = voltage;
*/
    [self CalcVoltage];
}

- (IBAction)mnuCalcVoltage:(id)sender {
   [self CalcVoltage];
}

- (IBAction)mnuCalcCurrent:(id)sender {
    [self CalcCurrent ];
}

/*
  The methods below are the actual implementation of the calculations, the even handlers
  just call these whenever actual work is to be done.
*/

- (void)CalcCurrent{
    double voltage = _voltageBox.doubleValue;
    double resistance = _resistanceBox.doubleValue;
    
    if(1 == _ohmsRadio.integerValue){
        
    }else if(1 == _kiloOhmsRadio.integerValue){
        resistance *= 1000.0;
        
    }else if(1 == _megaOhmsRadio.integerValue){
        resistance *= 1000000.0;
    }
    
    double current = voltage / resistance;
    
    _currentBox.doubleValue = current;
}

- (void) CalcVoltage {
    double current = _currentBox.doubleValue;
    double resistance = _resistanceBox.doubleValue;
    
    if(1 == _ohmsRadio.integerValue){
        
    }else if(1 == _kiloOhmsRadio.integerValue){
        resistance *= 1000.0;
    }else if(1 == _megaOhmsRadio.integerValue){
        resistance *= 1000000.0;
        
    }
    
    double voltage = current * resistance;
    
    _voltageBox.doubleValue = voltage;
    
}

- (void) ClrEntries {
    _voltageBox.stringValue = @"";
    _currentBox.stringValue = @"";
    _resistanceBox.stringValue = @"";
}

- (void) CalcResistance {
    double current = _currentBox.doubleValue;
    double voltage = _voltageBox.doubleValue;
    
    
    double resistance = voltage / current;
    
    if(1 == _ohmsRadio.integerValue){
        
    }else if(1 == _kiloOhmsRadio.integerValue){
        if((resistance / 1000.0) > 1.0){
            resistance /= 1000.0;
        }
        
    }else if(1 == _megaOhmsRadio.integerValue){
        if((resistance / 1000000.0) > 1.0){
            resistance /= 1000000.0;
        }
    }
    
    _resistanceBox.doubleValue = resistance;
    
}

@end
