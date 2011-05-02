#define UIView NSView
#define UIColor NSColor
#define UIGraphicsGetCurrentContext() [[NSGraphicsContext currentContext] graphicsPort]

@interface NSView (UIKit)

@property (copy) UIColor *backgroundColor ;

- (void)setNeedsDisplay ;

@end
