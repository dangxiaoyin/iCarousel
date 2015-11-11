//
//  ZYiCarouselTestViewController.m
//  ZYiCarouselTest
//
//  Created by wxg on 13-5-16.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ZYiCarouselTestViewController.h"

@implementation ZYiCarouselTestViewController



/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	
}

-(IBAction)buttonClick:(UIButton *)button{
	if (button.tag==1) {
		ZYOpenFlowViewController *pController=[[ZYOpenFlowViewController alloc] init];
		[self.navigationController pushViewController:pController animated:YES];
		[pController release];
	}else {
		ZYiCarpuseViewController *pController=[[ZYiCarpuseViewController alloc] init];
		[self.navigationController pushViewController:pController animated:YES];
		[pController release];		
	}

}

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	
    [super dealloc];
}

@end
