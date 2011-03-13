//
//  UIProgressView.h
//  UIKit
//
//  Copyright 2005-2010 Apple Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIView.h>
#import <UIKit/UIKitDefines.h>

typedef enum {
    UIProgressViewStyleDefault,     // normal progress bar
    UIProgressViewStyleBar,         // for use in a toolbar
} UIProgressViewStyle;

UIKIT_CLASS_AVAILABLE(2_0) @interface UIProgressView : UIView <NSCoding>
{ 
  @private
    UIProgressViewStyle _progressViewStyle;
    float               _progress;
    UIBarStyle          _barStyle;
    UIColor*            _customColor;
    UIImage*            _customColorImage;
}

- (id)initWithProgressViewStyle:(UIProgressViewStyle)style; // sets the view height according to the style

@property(nonatomic) UIProgressViewStyle progressViewStyle; // default is UIProgressViewStyleDefault
@property(nonatomic) float progress;                        // 0.0 .. 1.0, default is 0.0. values outside are pinned

@end
