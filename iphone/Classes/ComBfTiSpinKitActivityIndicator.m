//
//  ComBfTiSpinKitActivityIndicator.m
//  TiSpinKit
//
//  Created by Duy Bao Nguyen on 8/15/16.
//
//

#import "ComBfTiSpinKitActivityIndicator.h"

@implementation ComBfTiSpinKitActivityIndicator

- (void)initializeState
{
    // Creates and keeps a reference to the view upon initialization
    spinner = [[RTSpinKitView alloc] init];
    [self addSubview:spinner];
    [super initializeState];
}

-(void)dealloc
{
    // Deallocates the view
    RELEASE_TO_NIL(spinner);
    [super dealloc];
}

-(void)frameSizeChanged:(CGRect)frame bounds:(CGRect)bounds
{
    // Sets the size and position of the view
    [TiUtils setView:spinner positionRect:bounds];
}

-(void)setColor_:(id)color
{
    spinner.color = [[TiUtils colorValue:color] _color];
}

-(void)setSize_:(id)size
{
    spinner.spinnerSize = [TiUtils floatValue:size];
}

-(void)setStyle_:(id)arg
{
    NSString *styleStr = [TiUtils stringValue:arg];

    if ([styleStr isEqual: @"Plane"]) {
        spinner.style = RTSpinKitViewStylePlane;
    }
    else if ([styleStr isEqual:@"CircleFlip"]) {
        spinner.style = RTSpinKitViewStyleCircleFlip;
    }
    else if ([styleStr isEqual:@"Bounce"]) {
        spinner.style = RTSpinKitViewStyleBounce;
    }
    else if ([styleStr isEqual:@"Wave"]) {
        spinner.style = RTSpinKitViewStyleWave;
    }
    else if ([styleStr isEqual:@"WanderingCubes"]) {
        spinner.style = RTSpinKitViewStyleWanderingCubes;
    }
    else if ([styleStr isEqual:@"Pulse"]) {
        spinner.style = RTSpinKitViewStylePulse;
    }
    else if ([styleStr isEqual:@"ChasingDots"]) {
        spinner.style = RTSpinKitViewStyleChasingDots;
    }
    else if ([styleStr isEqual:@"ThreeBounce"]) {
        spinner.style = RTSpinKitViewStyleThreeBounce;
    }
    else if ([styleStr isEqual:@"Circle"]) {
        spinner.style = RTSpinKitViewStyleCircle;
    }
    else if ([styleStr isEqual:@"9CubeGrid"]) {
        spinner.style = RTSpinKitViewStyle9CubeGrid;
    }
    else if ([styleStr isEqual:@"WordPress"]) {
        spinner.style = RTSpinKitViewStyleWordPress;
    }
    else if ([styleStr isEqual:@"FadingCircle"]) {
        spinner.style = RTSpinKitViewStyleFadingCircle;
    }
    else if ([styleStr isEqual:@"FadingCircleAlt"]) {
        spinner.style = RTSpinKitViewStyleFadingCircleAlt;
    }
    else if ([styleStr isEqual:@"Arc"]) {
        spinner.style = RTSpinKitViewStyleArc;
    }
    else {
        spinner.style = RTSpinKitViewStyleArcAlt;
    }
}

-(void)configurationSet
{
    // This method is called right after all view properties have
    // been initialized from the view proxy. If the view is dependent
    // upon any properties being initialized then this is the method
    // to implement the dependent functionality.
    spinner = [[RTSpinKitView alloc]
        initWithStyle:spinner.style
        color:spinner.color
        spinnerSize:spinner.spinnerSize
    ];

    [super configurationSet];
}

@end
