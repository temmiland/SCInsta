#import "../../InstagramHeaders.h"
#import "../../Manager.h"

%hook IGUsageInsightsBlockingViewController
- (void)viewDidLoad {
    %orig;

    if ([SCIManager getPref:@"disable_usage_insights"]) {
        NSLog(@"[SCInsta] Disabling interaction with usage insights");


        [[self view] setUserInteractionEnabled:NO];

        return;
    }
}
%end
