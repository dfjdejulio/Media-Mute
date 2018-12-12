//
//  ViewController.m
//  Media Mute Mobile
//
//  Created by Doug DeJulio on 2018-12-11.
//  Copyright © 2018 Doug DeJulio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Fetch the embedded RTF file with the display text.
    NSURL *aboutPath = [[NSBundle mainBundle] URLForResource:@"About" withExtension:@"rtf"];
    NSAttributedString *aboutText = [[NSAttributedString alloc] initWithURL:aboutPath options:@{ } documentAttributes: Nil error: Nil];
    // Fetch the view in which to display it.
    UITextView *aboutView = [self.view viewWithTag:23];
    // Display it.
    aboutView.attributedText = aboutText;
}

@end
