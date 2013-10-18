//
//  MainViewController.m
//  Internet Soundboard
//
//  Created by Jack  on 8/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "MainViewController.h"
#import "Page1.h"
#import "Page2.h"
#import "Page3.h"
#import "Page4.h"

@implementation MainViewController
@synthesize scrollView;
@synthesize pageControl;
@synthesize contentView = _contentView;
@synthesize adBannerView = _adBannerView;
@synthesize adBannerViewIsVisible = _adBannerViewIsVisible;



-(IBAction) stopall {
	[a101 stop];
	[a102 stop];
	[a103 stop];
	[a104 stop];
	[a105 stop];
	[a106 stop];
	[a107 stop];
	[a108 stop];
	[a109 stop];
	[a110 stop];
	[a111 stop];
	[a112 stop];
	
	[a201 stop];
	[a202 stop];
	[a203 stop];
	[a204 stop];
	[a205 stop];
	[a206 stop];
	[a207 stop];
	[a208 stop];
	[a209 stop];
	[a210 stop];
	[a211 stop];
	[a212 stop];
	
	[a301 stop];
	[a302 stop];
	[a303 stop];
	[a304 stop];
	[a305 stop];
	[a306 stop];
	[a307 stop];
	[a308 stop];
	[a309 stop];
	[a310 stop];
	[a311 stop];
	[a312 stop];
	
	[a401 stop];
	[a402 stop];
	[a403 stop];
	[a404 stop];
	[a405 stop];
	[a406 stop];
	[a407 stop];
	[a408 stop];
	[a409 stop];
	[a410 stop];
	[a411 stop];
	[a412 stop];

	a101.currentTime = 0;
	a102.currentTime = 0;
	a103.currentTime = 0;
	a104.currentTime = 0;
	a105.currentTime = 0;
	a106.currentTime = 0;
	a107.currentTime = 0;
	a108.currentTime = 0;
	a109.currentTime = 0;
	a110.currentTime = 0;
	a111.currentTime = 0;
	a112.currentTime = 0;
	
	a201.currentTime = 0;
	a202.currentTime = 0;
	a203.currentTime = 0;
	a204.currentTime = 0;
	a205.currentTime = 0;
	a206.currentTime = 0;
	a207.currentTime = 0;
	a208.currentTime = 0;
	a209.currentTime = 0;
	a210.currentTime = 0;
	a211.currentTime = 0;
	a212.currentTime = 0;
	
	a301.currentTime = 0;
	a302.currentTime = 0;
	a303.currentTime = 0;
	a304.currentTime = 0;
	a305.currentTime = 0;
	a306.currentTime = 0;
	a307.currentTime = 0;
	a308.currentTime = 0;
	a309.currentTime = 0;
	a310.currentTime = 0;
	a311.currentTime = 0;
	a312.currentTime = 0;
	
	a401.currentTime = 0;
	a402.currentTime = 0;
	a403.currentTime = 0;
	a404.currentTime = 0;
	a405.currentTime = 0;
	a406.currentTime = 0;
	a407.currentTime = 0;
	a408.currentTime = 0;
	a409.currentTime = 0;
	a410.currentTime = 0;
	a411.currentTime = 0;
	a412.currentTime = 0;
	
};
-(BOOL) anyrunning {
	
	BOOL a1 = (a101.playing || a102.playing || a103.playing || a104.playing || a105.playing || a106.playing || a107.playing || a108.playing || a109.playing || a110.playing || a111.playing || a112.playing);
	BOOL a2 = (a201.playing || a202.playing || a203.playing || a204.playing || a205.playing || a206.playing || a207.playing || a208.playing || a209.playing || a210.playing || a211.playing || a212.playing);
	BOOL a3 = (a301.playing || a302.playing || a303.playing || a304.playing || a305.playing || a306.playing || a307.playing || a308.playing || a309.playing || a310.playing || a311.playing || a312.playing);
	BOOL a4 = (a401.playing || a402.playing || a403.playing || a404.playing || a405.playing || a406.playing || a407.playing || a408.playing || a409.playing || a410.playing || a411.playing || a412.playing);
	return (a1 || a2 || a3 || a4);
};


- (int)getBannerHeight:(UIDeviceOrientation)orientation {
	
	return 50;
}

- (int)getBannerHeight {
    return [self getBannerHeight:[UIDevice currentDevice].orientation];
}

- (void)createAdBannerView {
    Class classAdBannerView = NSClassFromString(@"ADBannerView");
    if (classAdBannerView != nil) {
        self.adBannerView = [[[classAdBannerView alloc] initWithFrame:CGRectZero] autorelease];
        [_adBannerView setRequiredContentSizeIdentifiers:[NSSet setWithObjects: ADBannerContentSizeIdentifier320x50, ADBannerContentSizeIdentifier480x32, nil]];
		[_adBannerView setCurrentContentSizeIdentifier:ADBannerContentSizeIdentifier320x50];            
        [_adBannerView setFrame:CGRectOffset([_adBannerView frame], 0, 97-[self getBannerHeight])];
        [_adBannerView setDelegate:self];
        [self.view addSubview:_adBannerView];        
    }
}

- (void)fixupAdView:(UIInterfaceOrientation)toInterfaceOrientation {
    if (_adBannerView != nil) {        
		[_adBannerView setCurrentContentSizeIdentifier: ADBannerContentSizeIdentifier320x50];
        [UIView beginAnimations:@"fixupViews" context:nil];
        if (_adBannerViewIsVisible) {
            CGRect adBannerViewFrame = [_adBannerView frame];
            adBannerViewFrame.origin.x = 0;
            adBannerViewFrame.origin.y = 47;
            [_adBannerView setFrame:adBannerViewFrame];
            CGRect contentViewFrame = _contentView.frame;
            contentViewFrame.origin.y = [self getBannerHeight:toInterfaceOrientation];
            contentViewFrame.size.height = self.view.frame.size.height - [self getBannerHeight:toInterfaceOrientation];
            _contentView.frame = contentViewFrame;
        } else {
            CGRect adBannerViewFrame = [_adBannerView frame];
            adBannerViewFrame.origin.x = 0;
            adBannerViewFrame.origin.y = -[self getBannerHeight:toInterfaceOrientation];
            [_adBannerView setFrame:adBannerViewFrame];
            CGRect contentViewFrame = _contentView.frame;
            contentViewFrame.origin.y = 0;
            contentViewFrame.size.height = self.view.frame.size.height;
            _contentView.frame = contentViewFrame;            
        }
        [UIView commitAnimations];
    }   
}

-(void) initsounds {
		
	NSError *error;
	a101 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/101.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a102 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/102.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a103 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/103.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a104 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/104.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a105 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/105.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a106 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/106.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a107 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/107.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a108 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/108.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a109 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/109.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a110 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/110.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a111 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/111.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a112 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/112.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a201 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/201.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a202 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/202.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a203 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/203.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a204 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/204.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a205 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/205.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a206 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/206.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a207 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/207.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a208 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/208.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a209 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/209.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a210 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/210.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a211 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/211.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a212 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/212.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a301 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/301.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a302 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/302.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a303 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/303.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a304 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/304.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a305 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/305.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a306 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/306.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a307 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/307.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a308 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/308.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a309 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/309.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a310 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/310.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a311 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/311.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a312 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/312.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a401 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/401.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a402 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/402.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a403 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/403.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a404 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/404.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a405 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/405.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a406 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/406.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a407 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/407.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a408 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/408.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a409 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/409.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a410 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/410.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a411 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/411.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	a412 = [[AVAudioPlayer alloc] initWithContentsOfURL:[NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/412.mp3", [[NSBundle mainBundle] resourcePath]]] error:&error];
	
	[a101 prepareToPlay];
	[a102 prepareToPlay];
	[a103 prepareToPlay];
	[a104 prepareToPlay];
	[a105 prepareToPlay];
	[a106 prepareToPlay];
	[a107 prepareToPlay];
	[a108 prepareToPlay];
	[a109 prepareToPlay];
	[a110 prepareToPlay];
	[a111 prepareToPlay];
	[a112 prepareToPlay];
	[a201 prepareToPlay];
	[a202 prepareToPlay];
	[a203 prepareToPlay];
	[a204 prepareToPlay];
	[a205 prepareToPlay];
	[a206 prepareToPlay];
	[a207 prepareToPlay];
	[a208 prepareToPlay];
	[a209 prepareToPlay];
	[a210 prepareToPlay];
	[a211 prepareToPlay];
	[a212 prepareToPlay];
	[a301 prepareToPlay];
	[a302 prepareToPlay];
	[a303 prepareToPlay];
	[a304 prepareToPlay];
	[a305 prepareToPlay];
	[a306 prepareToPlay];
	[a307 prepareToPlay];
	[a308 prepareToPlay];
	[a309 prepareToPlay];
	[a310 prepareToPlay];
	[a311 prepareToPlay];
	[a312 prepareToPlay];
	[a401 prepareToPlay];
	[a402 prepareToPlay];
	[a403 prepareToPlay];
	[a404 prepareToPlay];
	[a405 prepareToPlay];
	[a406 prepareToPlay];
	[a407 prepareToPlay];
	[a408 prepareToPlay];
	[a409 prepareToPlay];
	[a410 prepareToPlay];
	[a411 prepareToPlay];
	[a412 prepareToPlay];
	
}

- (void)viewDidLoad 
{
	[self initsounds];
	[self setupPage];
	[self createAdBannerView];
	vol = 0.2;
	[self changevol];
	[super viewDidLoad];
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


- (void)viewDidUnload 
{
	[scrollView release];
	[pageControl release];
}

-(void) changevol {
		 
	a101.volume = vol;
	a102.volume = vol;
	a103.volume = vol;
	a104.volume = vol;
	a105.volume = vol;
	a106.volume = vol;
	a107.volume = vol;
	a108.volume = vol;
	a109.volume = vol;
	a110.volume = vol;
	a111.volume = vol;
	a112.volume = vol;
	
	a201.volume = vol;
	a202.volume = vol;
	a203.volume = vol;
	a204.volume = vol;
	a205.volume = vol;
	a206.volume = vol;
	a207.volume = vol;
	a208.volume = vol;
	a209.volume = vol;
	a210.volume = vol;
	a211.volume = vol;
	a212.volume = vol;
	
	a301.volume = vol;
	a302.volume = vol;
	a303.volume = vol;
	a304.volume = vol;
	a305.volume = vol;
	a306.volume = vol;
	a307.volume = vol;
	a308.volume = vol;
	a309.volume = vol;
	a310.volume = vol;
	a311.volume = vol;
	a312.volume = vol;
	
	a401.volume = vol;
	a402.volume = vol;
	a403.volume = vol;
	a404.volume = vol;
	a405.volume = vol;
	a406.volume = vol;
	a407.volume = vol;
	a408.volume = vol;
	a409.volume = vol;
	a410.volume = vol;
	a411.volume = vol;
	a412.volume = vol;
	
}

-(IBAction) sliderChanged:(id) sender{
	UISlider *slider = (UISlider *) sender;
	vol = (slider.value * 0.2);
	[self changevol];
}

- (void)setupPage
{
	scrollView.delegate = self;
	
	[self.scrollView setBackgroundColor:[UIColor blackColor]];
	[scrollView setCanCancelContentTouches:NO];
	
	scrollView.showsHorizontalScrollIndicator = NO;
	scrollView.clipsToBounds = YES;
	scrollView.scrollEnabled = YES;
	scrollView.pagingEnabled = YES;
	
	//NSUInteger nimages = 3;
	CGFloat pages = 4;
	/*for (; ; nimages++) {
		NSString *imageName = [NSString stringWithFormat:@"image%d.jpg", (nimages + 1)];
		UIImage *image = [UIImage imageNamed:imageName];
		if (image == nil) {
			break;
		}
		UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
		
		CGRect rect = imageView.frame;
		rect.size.height = image.size.height;
		rect.size.width = image.size.width;
		rect.origin.x = ((scrollView.frame.size.width - image.size.width) / 3) + cx;
		rect.origin.y = ((scrollView.frame.size.height - image.size.height) / 3);
		
		imageView.frame = rect;
		
		[scrollView addSubview:imageView];
		[imageView release];
		
		cx += scrollView.frame.size.width;
	}
	*/
	self.pageControl.numberOfPages = pages;
	[scrollView setContentSize:CGSizeMake(pages*320, [scrollView bounds].size.height)];
	UIViewController *page1 = [[Page1 alloc] initWithNibName:@"Page1" bundle:nil];
	UIViewController *page2 = [[Page2 alloc] initWithNibName:@"Page2" bundle:nil];
	UIViewController *page3 = [[Page3 alloc] initWithNibName:@"Page3" bundle:nil];
	UIViewController *page4 = [[Page4 alloc] initWithNibName:@"Page4" bundle:nil];
	
	page2.view.transform = CGAffineTransformTranslate(page2.view.transform, 320, 0);
	page3.view.transform = CGAffineTransformTranslate(page3.view.transform, 640, 0);
	page4.view.transform = CGAffineTransformTranslate(page4.view.transform, 960, 0);
	
	[scrollView addSubview:page1.view];
	[scrollView addSubview:page2.view];
	[scrollView addSubview:page3.view];
	[scrollView addSubview:page4.view];
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)_scrollView 
{
    pageControlIsChangingPage = NO;
}

#pragma mark -
#pragma mark PageControl stuff
- (IBAction)changePage:(id)sender 
{
	/*
	 *	Change the scroll view
	 */
    CGRect frame = scrollView.frame;
    frame.origin.x = frame.size.width * pageControl.currentPage;
    frame.origin.y = 0;
	
    [scrollView scrollRectToVisible:frame animated:YES];
	
	/*
	 *	When the animated scrolling finishings, scrollViewDidEndDecelerating will turn this off
	 */
    pageControlIsChangingPage = YES;
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

- (void)scrollViewDidScroll:(UIScrollView *)_scrollView
{
    if (pageControlIsChangingPage) {
        return;
    }
	
	/*
	 *	We switch page at 50% across
	 */
    CGFloat pageWidth = _scrollView.frame.size.width;
    int page = floor((_scrollView.contentOffset.x - pageWidth / 2) / pageWidth) + 1;
    pageControl.currentPage = page;
}

- (void)bannerViewDidLoadAd:(ADBannerView *)banner {
    if (!_adBannerViewIsVisible) {                
        _adBannerViewIsVisible = YES;
        [self fixupAdView:[UIDevice currentDevice].orientation];
    }
}

- (void)bannerView:(ADBannerView *)banner didFailToReceiveAdWithError:(NSError *)error
{
    if (_adBannerViewIsVisible)
    {        
        _adBannerViewIsVisible = NO;
        [self fixupAdView:[UIDevice currentDevice].orientation];
    }
}


@end
