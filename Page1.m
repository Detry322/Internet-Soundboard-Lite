//
//  Page1.m
//  Internet Soundboard
//
//  Created by Jack  on 8/6/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "Page1.h"
#import "MainViewController.h"


@implementation Page1

-(IBAction) press101 {

	if (a101.playing) {
	
		[a101 pause];
		a101.currentTime = 0;
		
	}
	[a101 play];
	
};
-(IBAction) press102 {
	
	if (a102.playing) {
		
		[a102 pause];
		a102.currentTime = 0;
		
	}
	[a102 play];
	
};
-(IBAction) press103 {
	
	if (a103.playing) {
		
		[a103 pause];
		a103.currentTime = 0;
		
	}
	[a103 play];
	
};
-(IBAction) press104 {
	
	if (a104.playing) {
		
		[a104 pause];
		a104.currentTime = 0;
		
	}
	[a104 play];
	
};
-(IBAction) press105 {
	
	if (a105.playing) {
		
		[a105 pause];
		a105.currentTime = 0;
		
	}
	a105.volume = vol * 4;
	[a105 play];
	
};
-(IBAction) press106 {
	
	if (a106.playing) {
		
		[a106 pause];
		a106.currentTime = 0;
		
	}
	[a106 play];
	
};

-(IBAction) press107 {
	
	
	if (a107.playing) {
		
		[a107 pause];
		a107.currentTime = 0;
		
	}
	[a107 play];
	
	
	
}

-(IBAction) press108 {
	
	if (a108.playing) {
		
		[a108 pause];
		a108.currentTime = 0;
		
	}
	[a108 play];
	
};
-(IBAction) press109 {
	
	if (a109.playing) {
		
		[a109 pause];
		a109.currentTime = 0;
		
	}
	[a109 play];
	
};
-(IBAction) press110 {
	
	if (a110.playing) {
		
		[a110 pause];
		a110.currentTime = 0;
		
	}
	[a110 play];
	
};
-(IBAction) press111 {
	
	if (a111.playing) {
		
		[a111 pause];
		a111.currentTime = 0;
		
	}
	[a111 play];
	
};
-(IBAction) press112 {
	
	if (a112.playing) {
		
		[a112 pause];
		a112.currentTime = 0;
		
	}
	[a112 play];
	
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
