//
//  AppDelegate.h
//  OhmsLawCalculator
//
//  Created by Richard Buttars on 6/22/15.
//  Copyright (c) 2015 Richard Buttars. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSButtonCell *ohmsRadio;

@property (weak) IBOutlet NSButtonCell *kiloOhmsRadio;

@property (weak) IBOutlet NSButtonCell *megaOhmsRadio;

@property (weak) IBOutlet NSTextField *voltageBox;

@property (weak) IBOutlet NSTextField *currentBox;

@property (weak) IBOutlet NSTextField *resistanceBox;

@end

