#import "H.h"




%hook NFUIGraphicalPlaybackAdvisoryView


-(void)didMoveToWindow { // This same thing can be achieved as well by returning nil on the setupTimer method, I won't be updating the tweak since I did it mainly for myself, but this is in case you want to compile it with less code. Thanks u/Fadexz_ for the heads up!


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
