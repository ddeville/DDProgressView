//
//  DDProgressViewViewController.h
//  DDProgressView
//
//  Created by Damien DeVille on 3/13/11.
//  Copyright 2011 Snappy Code. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DDProgressView ;

@interface DDProgressViewViewController : UIViewController
{
    float   testProgress ;
    int     progressDir ;
    
    DDProgressView *progressView ;    
    DDProgressView *progressView2 ;
}

@end
