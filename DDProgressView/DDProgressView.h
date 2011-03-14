//
//  DDProgressView.h
//  DDProgressView
//
//  Created by Damien DeVille on 3/13/11.
//  Copyright 2011 Snappy Code. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DDProgressView : UIView
{
@private
	float progress ;
	UIColor *tintColor ;
}

@property (nonatomic,retain) UIColor *tintColor ;
@property (nonatomic,assign) float progress ;

@end
