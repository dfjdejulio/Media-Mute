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
    // Do any additional setup after loading the view, typically from a nib.
    NSURL *aboutPath = [[NSBundle mainBundle] URLForResource:@"About" withExtension:@"rtf"];
    NSAttributedString *aboutText = [[NSAttributedString alloc] initWithURL:aboutPath options:@{ } documentAttributes: Nil error: Nil];
    UITextView *aboutView = [self.view viewWithTag:23];
    aboutView.attributedText = aboutText;    
}


@end
