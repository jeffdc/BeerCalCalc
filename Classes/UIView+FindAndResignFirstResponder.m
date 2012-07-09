//
//  UIView+FindAndResignFirstResponder.m
//  BeerCalCalc
//
//  Created by Jeff Clark on 7/9/12.
//  Copyright (c) 2012 Nothoo. All rights reserved.
//


// based on code from Stack Overflow - 
// http://stackoverflow.com/questions/1823317/how-do-i-legally-get-the-current-first-responder-on-the-screen-on-an-iphone

#import "UIView+FindAndResignFirstResponder.h"

@implementation UIView (FindAndResignFirstResponder)
- (BOOL)findAndResignFirstResponder
{
    if (self.isFirstResponder) {
        [self resignFirstResponder];
        return YES;     
    }
    for (UIView *subView in self.subviews) {
        if ([subView findAndResignFirstResponder])
            return YES;
    }
    return NO;
}
@end