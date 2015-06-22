//
//  AppDelegate.m
//  OhmsLawCalculator
//
//  Created by Richard Buttars on 6/22/15.
//  Copyright (c) 2015 Richard Buttars. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

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
    
}

- (IBAction)CalculateResistance:(id)sender {
    double current = _currentBox.doubleValue;
    double voltage = _voltageBox.doubleValue;
    
    
    if(1 == _ohmsRadio.integerValue){
        
    }else if(1 == _kiloOhmsRadio.integerValue){
        
    }else if(1 == _megaOhmsRadio.integerValue){
        
    }
}

- (IBAction)CalculateCurrent:(id)sender {
    double voltage = _voltageBox.doubleValue;
    double resistance = _resistanceBox.doubleValue;
    
    if(1 == _ohmsRadio.integerValue){
        
    }else if(1 == _kiloOhmsRadio.integerValue){
        
    }else if(1 == _megaOhmsRadio.integerValue){
        
    }

}

- (IBAction)CalculateVoltage:(id)sender {
    double current = _currentBox.doubleValue;
    double resistance = _resistanceBox.doubleValue;    
    
    if(1 == _ohmsRadio.integerValue){
        
    }else if(1 == _kiloOhmsRadio.integerValue){
        
    }else if(1 == _megaOhmsRadio.integerValue){
        
    }
}

@end
