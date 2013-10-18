//
//  Page2.m
//  Internet Soundboard
//
//  Created by Jack  on 8/6/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Page2.h"
#import "MainViewController.h"

@implementation Page2

-(IBAction) press201 {
	
	if (a201.playing) {
		
		[a201 pause];
		a201.currentTime = 0;
		
	}
	[a201 play];
	
};
-(IBAction) press202 {
	
	if (a202.playing) {
		
		[a202 pause];
		a202.currentTime = 0;
		
	}
	a202.volume = vol * 0.5;
	[a202 play];
	
};
-(IBAction) press203 {
	
	if (a203.playing) {
		
		[a203 pause];
		a203.currentTime = 0;
		
	}
	[a203 play];
	
};
-(IBAction) press204 {
	
	if (a204.playing) {
		
		[a204 pause];
		a204.currentTime = 0;
		
	}
	[a204 play];
	
};
-(IBAction) press205 {
	
	if (a205.playing) {
		
		[a205 pause];
		a205.currentTime = 0;
		
	}
	[a205 play];
	
};
-(IBAction) press206 {
	
	if (a206.playing) {
		
		[a206 pause];
		a206.currentTime = 0;
		
	}
	[a206 play];
	
};

-(IBAction) press207 {
	
	
	if (a207.playing) {
		
		[a207 pause];
		a207.currentTime = 0;
		
	}
	[a207 play];
	
	
	
}

-(IBAction) press208 {
	
	if (a208.playing) {
		
		[a208 pause];
		a208.currentTime = 0;
		
	}
	[a208 play];
	
};
-(IBAction) press209 {
	
	if (a209.playing) {
		
		[a209 pause];
		a209.currentTime = 0;
		
	}
	[a209 play];
	
};
-(IBAction) press210 {
	
	if (a210.playing) {
		
		[a210 pause];
		a210.currentTime = 0;
		
	}
	[a210 play];
	
};
-(IBAction) press211 {
	
	if (a211.playing) {
		
		[a211 pause];
		a211.currentTime = 0;
		
	}
	[a211 play];
	
};
-(IBAction) press212 {
	
	if (a212.playing) {
		
		[a212 pause];
		a212.currentTime = 0;
		
	}
	[a212 play];
	
};

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if ((self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil])) {
        // Custom initialization
    }
    return self;
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
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
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
