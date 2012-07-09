//
//  MainViewController.h
//  BeerCalCalc
//
//  Created by Jeff Clark on 12/6/10.
//  Copyright 2010 nothoo. All rights reserved.
//

#import "FlipsideViewController.h"
#import "UIView+FindAndResignFirstResponder.h"

@interface MainViewController : UIViewController <FlipsideViewControllerDelegate, UITextFieldDelegate> {

	IBOutlet UITextField *abv;
	IBOutlet UITextField *volume;
	IBOutlet UILabel *calories;
}

- (IBAction)showInfo:(id)sender;
- (IBAction)magic:(id)sender;

@end
