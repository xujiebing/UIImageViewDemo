//
//  ResizableViewController.m
//  UIImageViewDemo
//
//  Created by 徐结兵 on 2018/4/16.
//  Copyright © 2018年 八维通. All rights reserved.
//

#import "ResizableViewController.h"

@interface ResizableViewController ()

@property (nonatomic, strong, readwrite) UIImageView *imgView;

@end

@implementation ResizableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.imgView];
    
    if (self.type == 0) {
        self.imgView.image = [UIImage imageNamed:@"image1"];
    }
    
    if (self.type == 1) {
        self.imgView.image = [UIImage imageNamed:@"image1"];
        self.imgView.contentMode = UIViewContentModeScaleAspectFill;
    }
    
    if (self.type == 2) {
        UIImage *image = [UIImage imageNamed:@"image1"];
        image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(1, 1, image.size.height - 2, 1) resizingMode:UIImageResizingModeStretch];
        self.imgView.image = image;
    }
    
    if (self.type == 3) {
        UIImage *image = [UIImage imageNamed:@"image1"];
        image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(image.size.width / 2 - 1, image.size.height / 2 - 1, image.size.width / 2 + 1, image.size.height / 2 + 1) resizingMode:UIImageResizingModeStretch];
        self.imgView.image = image;
    }

}



- (UIImageView *)imgView {
    if (!_imgView) {
        _imgView = [[UIImageView alloc] initWithFrame:self.view.frame];
        _imgView.backgroundColor = [UIColor yellowColor];
    }
    return _imgView;
}

@end
