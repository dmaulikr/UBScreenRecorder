//
//  UBScreenRecorder.m
//  TaxesCalculatorExample
//
//  Created by Sam Gray on 3/9/15.
//  Copyright (c) 2015 UberBit LLC. All rights reserved.
//

#import "UBScreenRecorder.h"
#import <UIKit/UIKit.h>

@interface UBScreenRecorder ()
@property(nonatomic, strong)CADisplayLink *displayLink;
@end

@implementation UBScreenRecorder

-(void)startRecording {
    [self setupDislayLink];
}

-(void)setupDislayLink; {
    _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(screenUpdated:)];
    _displayLink.frameInterval = 5;
    
    [_displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
}

-(void)screenUpdated:(CADisplayLink *)displayLink; {
    NSLog(@"screen updated");
}

@end
