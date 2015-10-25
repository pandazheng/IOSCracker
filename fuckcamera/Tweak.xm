%hook AVCaptureStillImageOutput

- (unsigned long)shutterSound
{
	NSLog(@"inject shutterSound success!");
	return 0;
}

%end

%ctor
{
	%init;
	NSLog(@"inject camera success!");
}
