//
//  ContentBlockerRequestHandler.m
//  Media Mute Content Blocker
//
//  Created by Doug DeJulio on 2018-12-11.
//  Copyright © 2018 Doug DeJulio. All rights reserved.
//

#import "ContentBlockerRequestHandler.h"

@interface ContentBlockerRequestHandler ()

@end

@implementation ContentBlockerRequestHandler

- (void)beginRequestWithExtensionContext:(NSExtensionContext *)context {
    NSItemProvider *attachment = [[NSItemProvider alloc] initWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"blockerList" withExtension:@"json"]];
    
    NSExtensionItem *item = [[NSExtensionItem alloc] init];
    item.attachments = @[attachment];
    
    [context completeRequestReturningItems:@[item] completionHandler:nil];
}

@end
