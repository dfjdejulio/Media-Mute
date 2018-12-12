//
//  AppDelegate.m
//  Media Mute
//
//  Created by Doug DeJulio on 2018-12-11.
//  Copyright © 2018 Doug DeJulio. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@property IBOutlet NSTextView *aboutView;
@end


@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    NSURL *aboutPath = [[NSBundle mainBundle] URLForResource:@"About" withExtension:@"rtf"];
    NSAttributedString *aboutText = [[NSAttributedString alloc] initWithURL:aboutPath options:@{ } documentAttributes: Nil error: Nil];
    [self.aboutView.textStorage setAttributedString: aboutText];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


@end
