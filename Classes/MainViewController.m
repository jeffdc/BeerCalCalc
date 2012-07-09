//
//  MainViewController.m
//  BeerCalCalc
//
//  Created by Jeff Clark on 12/6/10.
//  Copyright 2010 nothoo. All rights reserved.
//

#import "MainViewController.h"


@implementation MainViewController


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
	[super viewDidLoad];
}
*/

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
	[textField resignFirstResponder];
	
	return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
	NSLog(@"%@", textField);
	if (textField == volume) {
		NSLog(@"HERE");
		[abv becomeFirstResponder];
	} else {
		NSLog(@"THERE");
		[textField resignFirstResponder];
		[self magic:nil];
	}

}

- (IBAction)magic:(id)sender
{
	//fl. oz. *ABV = potency / 60 = beers * 150 C = Estimated Calories
	NSNumber *cals = [NSNumber numberWithFloat:[volume.text floatValue] * [abv.text floatValue] / 60 * 150];
	calories.text = [cals stringValue];
}


- (void)flipsideViewControllerDidFinish:(FlipsideViewController *)controller {
    
	[self dismissModalViewControllerAnimated:YES];
}


- (IBAction)showInfo:(id)sender {    
	
	FlipsideViewController *controller = [[FlipsideViewController alloc] initWithNibName:@"FlipsideView" bundle:nil];
	controller.delegate = self;
	
	controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
	[self presentModalViewController:controller animated:YES];
	
	[controller release];
}


- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc. that aren't in use.
}


- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
	// Return YES for supported orientations.
	return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/


- (void)dealloc {
    [super dealloc];
	

}


@end
