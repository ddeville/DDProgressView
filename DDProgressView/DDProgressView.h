//
//  DDProgressView.h
//  DDProgressView
//
//  Created by Damien DeVille on 3/13/11.
//  Copyright 2011 Snappy Code. All rights reserved.
//

#if TARGET_OS_IPHONE
#import <UIKit/UIKit.h>
#elif TARGET_OS_MAC
#import "AppKitCompatibility.h"
#endif

@interface DDProgressView : UIView
{
@private
	float progress ;
	UIColor *innerColor ;
	UIColor *outerColor ;
}

@property (nonatomic,retain) UIColor *innerColor ;
@property (nonatomic,retain) UIColor *outerColor ;
@property (nonatomic,assign) float progress ;

@end
