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
@property (weak, nonatomic) IBOutlet UIImageView *skydomeImgView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //
//    self.scrollingView.pagingEnabled = NO;
//    self.scrollingView.contentSize = CGSizeMake(self.view.bounds.size.width, self.view.bounds.size.height);
    self.scrollingView.minimumZoomScale = 0.2;
    self.scrollingView.maximumZoomScale = 4.0;
    self.scrollingView.zoomScale = 1.0;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView
{
    return self.skydomeImgView;
}

-(void) scrollViewDidZoom:(UIScrollView *)scrollView
{
    CGSize scrollViewSize = scrollView.bounds.size;
    //use FRAME!
    CGSize imageViewSize = self.skydomeImgView.frame.size;
    float verticalPadding = (scrollViewSize.height - imageViewSize.height)/2;
    float horizontalPadding = (scrollViewSize.width - imageViewSize.width)/2;
    scrollView.contentInset = UIEdgeInsetsMake(verticalPadding, horizontalPadding, verticalPadding, horizontalPadding);
}


-(void) scrollViewDidScroll:(UIScrollView *)scrollView
{
    NSLog(@"Content offset is now: %f, %f", scrollView.contentOffset.x, scrollView.contentOffset.y);
}



@end
