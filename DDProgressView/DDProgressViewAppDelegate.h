//
//  DDProgressViewAppDelegate.h
//  DDProgressView
//
//  Created by Damien DeVille on 3/13/11.
//  Copyright 2011 Snappy Code. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DDProgressViewViewController ;

@interface DDProgressViewAppDelegate : NSObject <UIApplicationDelegate>
{
    
}

@property (nonatomic, retain) IBOutlet UIWindow *window ;
@property (nonatomic, retain) IBOutlet DDProgressViewViewController *viewController ;

@end
