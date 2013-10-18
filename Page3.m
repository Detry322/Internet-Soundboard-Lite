//
//  Page3.m
//  Internet Soundboard
//
//  Created by Jack  on 8/6/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Page3.h"
#import "MainViewController.h"

@implementation Page3

-(IBAction) press301 {
	
	if (a301.playing) {
		
		[a301 pause];
		a301.volume = vol * 2;
		a301.currentTime = 0;
		
	}
	[a301 play];
	
};
-(IBAction) press302 {
	
	if (a302.playing) {
		
		[a302 pause];
		a302.currentTime = 0;
		
	}
	[a302 play];
	
};
-(IBAction) press303 {
	
	if (a303.playing) {
		
		[a303 pause];
		a303.currentTime = 0;
		
	}
	[a303 play];
	
};
-(IBAction) press304 {
	
	if (a304.playing) {
		
		[a304 pause];
		a304.currentTime = 0;
		
	}
	[a304 play];
	
};
-(IBAction) press305 {
	
	if (a305.playing) {
		
		[a305 pause];
		a305.currentTime = 0;
		
	}
	a305.volume = vol * 2;
	[a305 play];
	
};
-(IBAction) press306 {
	
	if (a306.playing) {
		
		[a306 pause];
		a306.currentTime = 0;
		
	}
	[a306 play];
	
};

-(IBAction) press307 {
	
	
	if (a307.playing) {
		
		[a307 pause];
		a307.currentTime = 0;
		
	}
	[a307 play];
	
	
	
}

-(IBAction) press308 {
	
	if (a308.playing) {
		
		[a308 pause];
		a308.currentTime = 0;
		
	}
	[a308 play];
	
};
-(IBAction) press309 {
	
	if (a309.playing) {
		
		[a309 pause];
		a309.currentTime = 0;
		
	}
	[a309 play];
	
};
-(IBAction) press310 {
	
	if (a310.playing) {
		
		[a310 pause];
		a310.currentTime = 0;
		
	}
	[a310 play];
	
};
-(IBAction) press311 {
	
	if (a311.playing) {
		
		[a311 pause];
		a311.currentTime = 0;
		
	}
	[a311 play];
	
};
-(IBAction) press312 {
	
	if (a312.playing) {
		
		[a312 pause];
		a312.currentTime = 0;
		
	}
	[a312 play];
	
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
