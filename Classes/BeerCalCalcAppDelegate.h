//
//  BeerCalCalcAppDelegate.h
//  BeerCalCalc
//
//  Created by Jeff Clark on 12/6/10.
//  Copyright 2010 nothoo. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MainViewController;

@interface BeerCalCalcAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    MainViewController *mainViewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet MainViewController *mainViewController;

@end

