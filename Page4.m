//
//  Page4.m
//  Internet Soundboard
//
//  Created by Jack  on 8/6/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Page4.h"
#import "MainViewController.h"

@implementation Page4



-(IBAction) press401 {
	
	if (a401.playing) {
		
		[a401 pause];
		a401.currentTime = 0;
		
	}
	a401.volume = vol * 0.3;
	[a401 play];
	
};
-(IBAction) press402 {
	
	if (a402.playing) {
		
		[a402 pause];
		a402.currentTime = 0;
		
	}
	[a402 play];
	
};
-(IBAction) press403 {
	
	if (a403.playing) {
		
		[a403 pause];
		a403.currentTime = 0;
		
	}
	[a403 play];
	
};
-(IBAction) press404 {
	
	if (a404.playing) {
		
		[a404 pause];
		a404.currentTime = 0;
		
	}
	[a404 play];
	
};
-(IBAction) press405 {
	
	if (a405.playing) {
		
		[a405 pause];
		a405.currentTime = 0;
		
	}
	a405.volume = vol * 2;
	[a405 play];
	
};
-(IBAction) press406 {
	
	if (a406.playing) {
		
		[a406 pause];
		a406.currentTime = 0;
		
	}
	[a406 play];
	
};

-(IBAction) press407 {
	
	
	if (a407.playing) {
		
		[a407 pause];
		a407.currentTime = 0;
		
	}
	[a407 play];
	
	
	
}

-(IBAction) press408 {
	
	if (a408.playing) {
		
		[a408 pause];
		a408.currentTime = 0;
		
	}
	[a408 play];
	
};
-(IBAction) press409 {
	
	if (a409.playing) {
		
		[a409 pause];
		a409.currentTime = 0;
		
	}
	[a409 play];
	
};
-(IBAction) press410 {
	
	if (a410.playing) {
		
		[a410 pause];
		a410.currentTime = 0;
		
	}
	[a410 play];
	
};
-(IBAction) press411 {
	
	if (a411.playing) {
		
		[a411 pause];
		a411.currentTime = 0;
		
	}
	[a411 play];
	
};
-(IBAction) press412 {
	
	if (a412.playing) {
		
		[a412 pause];
		a412.currentTime = 0;
		
	}
	[a412 play];
	
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
