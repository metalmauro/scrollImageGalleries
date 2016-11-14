//
//  ViewController.m
//  scrollImageGalleries
//
//  Created by Matthew Mauro on 2016-11-14.
//  Copyright © 2016 Matthew Mauro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIScrollViewDelegate>
@property (weak, nonatomic) IBOutlet UIScrollView *scrollingView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    self.scrollingView.pagingEnabled = NO;
    self.scrollingView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"Content offset is now: %f, %f", scrollView.contentOffset.x, scrollView.contentOffset.y);
}


@end
