//
//  ZYiCarpuseViewController.m
//  ZYiCarouselTest
//
//  Created by wxg on 13-5-16.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ZYiCarpuseViewController.h"


@implementation ZYiCarpuseViewController


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
	self.view.frame=CGRectMake(0, 0, 320, 480);
	self.view.backgroundColor=[UIColor blackColor];
	
	UIBarButtonItem *rightItem=[[UIBarButtonItem alloc] initWithTitle:@"切换" style:UIBarButtonItemStylePlain target:self action:@selector(qiehuan)];
	self.navigationItem.rightBarButtonItem=rightItem;
	[rightItem release];
	
	_carousel=[[iCarousel alloc] initWithFrame:CGRectMake(0, 64, 320, 480 - 64)];
	_carousel.type=iCarouselTypeCoverFlow;
	_carousel.delegate=self;
	_carousel.dataSource=self;
	
	[self.view addSubview:_carousel];
	[_carousel release];
	
}

-(void)qiehuan{
	Flag = !Flag;
	if (Flag) {
		_carousel.type=iCarouselTypeCylinder;
	}else {
		_carousel.type=iCarouselTypeCoverFlow;
	}
}

#pragma mark -
#pragma mark iCarouselDataSource
//有多少项
- (NSUInteger)numberOfItemsInCarousel:(iCarousel *)carousel{
	return 11;
}
//最大有多少个可以显示
- (NSUInteger)numberOfVisibleItemsInCarousel:(iCarousel *)carousel{
	return 5;
}
//每一个的内容
- (UIView *)carousel:(iCarousel *)carousel viewForItemAtIndex:(NSUInteger)index{
    
	UIImageView *imgv=[[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 300)];
	imgv.image=[UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg", index]];
	
	return [imgv autorelease];
}

#pragma mark -
#pragma mark iCarouselDelegate
-(CGFloat)carouselItemWidth:(iCarousel *)carousel{
	return 200;
}

- (void)carousel:(iCarousel *)carousel didSelectItemAtIndex:(NSInteger)index{
	NSLog(@"---->%d", index);
}

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}


@end
