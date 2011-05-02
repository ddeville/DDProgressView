#import "AppKitCompatibility.h"

@implementation NSView (UIKit)

- (UIColor *)backgroundColor
{
	return nil ;
}

- (void)setBackgroundColor:(UIColor *)color
{
	return ;
}

- (void)setNeedsDisplay
{
	[self setNeedsDisplay:YES] ;
}

@end
