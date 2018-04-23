//
//  ButtonViewController.m
//  UIImageViewDemo
//
//  Created by 徐结兵 on 2018/4/17.
//  Copyright © 2018年 八维通. All rights reserved.
//

#import "ButtonViewController.h"

@interface ButtonViewController ()

@end

@implementation ButtonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    CGFloat priceWidth = (self.view.frame.size.width - 15*2 - 15*2)/3;
    CGFloat priceHeight = 60;
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(80, 100, priceWidth, priceHeight)];
    [button setBackgroundImage:[UIImage imageNamed:@"yuechongzhi_select"] forState:UIControlStateNormal];
    [self.view addSubview:button];
    
    UIButton *button1 = [[UIButton alloc] initWithFrame:CGRectMake(80, 180, priceWidth, priceHeight)];
    UIImage *image = [UIImage imageNamed:@"yuechongzhi_select"];
    image = [image resizableImageWithCapInsets:UIEdgeInsetsMake(10, 10, 40, 40) resizingMode:UIImageResizingModeStretch];
    [button1 setBackgroundImage:image forState:UIControlStateNormal];
    [self.view addSubview:button1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
