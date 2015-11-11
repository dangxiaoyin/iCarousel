//
//  ZYiCarouselTestAppDelegate.h
//  ZYiCarouselTest
//
//  Created by wxg on 13-5-16.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ZYiCarouselTestViewController;

@interface ZYiCarouselTestAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    ZYiCarouselTestViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet ZYiCarouselTestViewController *viewController;

@end

