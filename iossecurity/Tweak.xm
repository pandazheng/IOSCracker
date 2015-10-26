#import <SpringBoard/SpringBoard.h>

%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
	%orig;

	NSLog(@"hook springboard begin......\n");

	UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Welcome" 
		message:@"Welcome to your iOS Device Ted!" 
		delegate:nil 
		cancelButtonTitle:@"security.ios-wiki.com" otherButtonTitles:nil];

	[alert show];
	[alert release];

	NSLog(@"hook springboard end......\n");
}

%end
