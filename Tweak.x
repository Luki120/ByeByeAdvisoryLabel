@interface NFUIPlaybackAdvisoryView : UIView
@property (nonatomic, weak, readwrite) UIView *redStripView;
@end


@interface NFUIGradientView : UIView
@end


@interface NFUILabel : UILabel
@end




%hook NFUILabel


- (void)didMoveToWindow {


       %orig;


       if([self.text containsString:@"+"])


              self.hidden = YES;


}


%end




%hook NFUIGradientView


- (void)didMoveToWindow {


       %orig;


       if([self.superview class] == %c(NFUIGraphicalPlaybackAdvisoryView))


              [self setHidden:YES];

}


%end




%hook NFUIPlaybackAdvisoryView


- (void)didMoveToWindow {


       %orig;


       self.redStripView.hidden = YES;


}


%end