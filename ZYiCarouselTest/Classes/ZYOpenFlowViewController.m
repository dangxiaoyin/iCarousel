//
//  ZYOpenFlowViewController.m
//  ZYiCarouselTest
//
//  Created by wxg on 13-5-16.
//  Copyright 2013 __MyCompanyName__. All rights reserved.
//

#import "ZYOpenFlowViewController.h"


@implementation ZYOpenFlowViewController



// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.

- (void)viewDidLoad {
    [super viewDidLoad];
	
	self.view.frame=CGRectMake(0, 0, 320, 480);
	self.view.backgroundColor=[UIColor blackColor];
	// coverflow
	
	//用处：展示一些电影的海报、书籍等
	AFOpenFlowView *openfloor=[[AFOpenFlowView alloc]initWithFrame:CGRectMake(0, 64, 320, 480 - 64)];
	openfloor.viewDelegate=self;
	
	openfloor.backgroundColor=[UIColor clearColor];
	
	//setNumberOfImages参数要和for的次数对应着
	[openfloor setNumberOfImages:11];
    
	for (int i=0; i<11; i++) {
		
		UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d.jpg",i]];
		
		//设置对应索引的图片
		[openfloor setImage:image forIndex:i];
		
	}
		
	[self.view addSubview:openfloor];
}

- (void)openFlowView:(AFOpenFlowView *)openFlowView selectionDidChange:(int)index
{
	NSLog(@"---->%d",index);
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
