//
//  ZYiCarpuseViewController.h
//  ZYiCarouselTest
//
//  Created by wxg on 13-5-16.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "iCarousel.h"

@interface ZYiCarpuseViewController : UIViewController<iCarouselDelegate, iCarouselDataSource> {
	BOOL Flag;
	iCarousel *_carousel;
}

@end
