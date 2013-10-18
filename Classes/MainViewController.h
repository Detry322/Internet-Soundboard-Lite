//
//  MainViewController.h
//  Internet Soundboard
//
//  Created by Jack  on 8/6/10.
//  Copyright __MyCompanyName__ 2010. All rights reserved.
//

#import "FlipsideViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <iAd/ADBannerView.h>


@interface MainViewController : UIViewController <FlipsideViewControllerDelegate,UIScrollViewDelegate,ADBannerViewDelegate> {
	
	IBOutlet UIScrollView* scrollView;
	IBOutlet UIPageControl* pageControl;
    BOOL pageControlIsChangingPage;
	UIView *_contentView;
	id _adBannerView;
	BOOL _adBannerViewIsVisible;
	
}
BOOL overlap;
float vol;
-(IBAction) sliderChanged:(id) sender;
-(IBAction) stopall;
-(BOOL) anyrunning;
-(void) changevol;

AVAudioPlayer *a101;
AVAudioPlayer *a102;
AVAudioPlayer *a103;
AVAudioPlayer *a104;
AVAudioPlayer *a105;
AVAudioPlayer *a106;
AVAudioPlayer *a107;
AVAudioPlayer *a108;
AVAudioPlayer *a109;
AVAudioPlayer *a110;
AVAudioPlayer *a111;
AVAudioPlayer *a112;

AVAudioPlayer *a201;
AVAudioPlayer *a202;
AVAudioPlayer *a203;
AVAudioPlayer *a204;
AVAudioPlayer *a205;
AVAudioPlayer *a206;
AVAudioPlayer *a207;
AVAudioPlayer *a208;
AVAudioPlayer *a209;
AVAudioPlayer *a210;
AVAudioPlayer *a211;
AVAudioPlayer *a212;

AVAudioPlayer *a301;
AVAudioPlayer *a302;
AVAudioPlayer *a303;
AVAudioPlayer *a304;
AVAudioPlayer *a305;
AVAudioPlayer *a306;
AVAudioPlayer *a307;
AVAudioPlayer *a308;
AVAudioPlayer *a309;
AVAudioPlayer *a310;
AVAudioPlayer *a311;
AVAudioPlayer *a312;

AVAudioPlayer *a401;
AVAudioPlayer *a402;
AVAudioPlayer *a403;
AVAudioPlayer *a404;
AVAudioPlayer *a405;
AVAudioPlayer *a406;
AVAudioPlayer *a407;
AVAudioPlayer *a408;
AVAudioPlayer *a409;
AVAudioPlayer *a410;
AVAudioPlayer *a411;
AVAudioPlayer *a412;



@property (nonatomic, retain) UIView *scrollView;
@property (nonatomic, retain) UIPageControl* pageControl;
@property (nonatomic, retain) IBOutlet UIView *contentView;
@property (nonatomic, retain) id adBannerView;
@property (nonatomic) BOOL adBannerViewIsVisible;

- (IBAction)showInfo:(id)sender;
- (IBAction)changePage:(id)sender;
- (void)setupPage;

@end
