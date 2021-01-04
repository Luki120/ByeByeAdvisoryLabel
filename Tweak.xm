#import "H.h"




%hook NFUIGraphicalPlaybackAdvisoryView


-(void)didMoveToWindow {


       %orig;


       UIView* redStripView = MSHookIvar<UIView *>(self, "_redStripView");


       [redStripView setHidden:YES];


       UIStackView* textStackView = MSHookIvar<UIStackView *>(self, "_textStackView");


       [textStackView setHidden:YES];


}


%end




%hook NFUIGraphicalPlaybackAdvisoryView


-(void)setGradientBackground:(id)arg1 {


       arg1 = nil;
       return %orig;


}


%end




%hook NFUIGraphicalPlaybackAdvisoryView


-(void)configureGradientBackground {


}


%end
