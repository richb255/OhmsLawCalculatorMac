//
//  AppDelegate.m
//  OhmsLawCalculator
//
//  Created by Richard Buttars on 6/22/15.
//  Copyright (c) 2015 Richard Buttars. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

-(void)CalcCurrent;

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
    _voltageBox.stringValue = @"";
    _currentBox.stringValue = @"";
    _resistanceBox.stringValue = @"";
}

- (IBAction)CalculateResistance:(id)sender {
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

- (IBAction)CalculateCurrent:(id)sender {
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

- (IBAction)CalculateVoltage:(id)sender {
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
- (IBAction)mnuCalcVoltage:(id)sender {
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

- (IBAction)mnuCalcCurrent:(id)sender {
    [self CalcCurrent ];
}

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

@end
