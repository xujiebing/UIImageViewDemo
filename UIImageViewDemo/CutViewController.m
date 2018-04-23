//
//  CutViewController.m
//  UIImageViewDemo
//
//  Created by 徐结兵 on 2018/4/16.
//  Copyright © 2018年 八维通. All rights reserved.
//

#import "CutViewController.h"

@interface CutViewController ()

@property (nonatomic, strong, readwrite) UIImageView *imgView;

@end

@implementation CutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:self.imgView];
    
}

- (UIImage *)cutImage:(UIImage*)originImage {
    CGSize newImageSize;
    CGImageRef imageRef = nil;
    
    CGSize imageViewSize = self.imgView.frame.size;
    CGSize originImageSize = originImage.size;
    
    if ((originImageSize.width / originImageSize.height) < (imageViewSize.width / imageViewSize.height)) {
        // originImageSize的宽高比 < imageView的宽高比
        newImageSize.width = originImageSize.width;
        newImageSize.height = imageViewSize.height * (originImageSize.width / imageViewSize.width);
        
        imageRef = CGImageCreateWithImageInRect([originImage CGImage], CGRectMake(0, fabs(originImageSize.height - newImageSize.height) / 2, newImageSize.width, newImageSize.height));
    } else {
        // image的宽高比 > imageView的宽高比   ： 也就是说原始图片比较狭长
        newImageSize.height = originImageSize.height;
        newImageSize.width = imageViewSize.width * (originImageSize.height / imageViewSize.height);
        
        imageRef = CGImageCreateWithImageInRect([originImage CGImage], CGRectMake(fabs(originImageSize.width - newImageSize.width) / 2, 0, newImageSize.width, newImageSize.height));
    }
    
    return [UIImage imageWithCGImage:imageRef];
}

- (UIImageView *)imgView {
    if (!_imgView) {
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 165, 255, 255)];
        _imgView.backgroundColor = [UIColor yellowColor];
        UIImage *image = [UIImage imageNamed:@"audi.jpg"];
        _imgView.image = [self cutImage:image];
    }
    return _imgView;
}


@end
