#line 1 "Tweak.xm"
#import <SpringBoard/SpringBoard.h>

#include <logos/logos.h>
#include <substrate.h>
@class SpringBoard; 
static void (*_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$)(SpringBoard*, SEL, id); static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(SpringBoard*, SEL, id); 

#line 3 "Tweak.xm"


static void _logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$(SpringBoard* self, SEL _cmd, id application) {
	_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$(self, _cmd, application);

	NSLog(@"hook springboard begin......\n");

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome" 
		message:@"Welcome to your iOS Device Ted!" 
		delegate:nil 
		cancelButtonTitle:@"security.ios-wiki.com" otherButtonTitles:nil];

	[alert show];
	[alert release];

	NSLog(@"hook springboard end......\n");
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SpringBoard = objc_getClass("SpringBoard"); MSHookMessageEx(_logos_class$_ungrouped$SpringBoard, @selector(applicationDidFinishLaunching:), (IMP)&_logos_method$_ungrouped$SpringBoard$applicationDidFinishLaunching$, (IMP*)&_logos_orig$_ungrouped$SpringBoard$applicationDidFinishLaunching$);} }
#line 22 "Tweak.xm"
