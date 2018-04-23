//
//  ContentModelViewController.m
//  UIImageViewDemo
//
//  Created by 徐结兵 on 2018/4/16.
//  Copyright © 2018年 八维通. All rights reserved.
//

#import "ContentModelViewController.h"

@interface ContentModelViewController ()

@end

@implementation ContentModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:self.imgView];
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(50, 75, 275, 50)];
    [button setBackgroundColor:[UIColor blueColor]];
    [button setTitle:@"点击" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(p_click) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)p_click {
    self.imgView.layer.masksToBounds = !self.imgView.layer.masksToBounds;
}

- (UIImageView *)imgView {
    if (!_imgView) {
        _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(60, 165, 255, 255)];
        _imgView.backgroundColor = [UIColor yellowColor];
        _imgView.image = [UIImage imageNamed:@"audi.jpg"];
        _imgView.layer.masksToBounds = YES;
    }
    return _imgView;
}

@end
