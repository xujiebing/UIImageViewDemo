//
//  ViewController.m
//  UIImageViewDemo
//
//  Created by 徐结兵 on 2018/4/16.
//  Copyright © 2018年 八维通. All rights reserved.
//

#import "ViewController.h"
#import "ContentModelTableViewController.h"
#import "CutViewController.h"
#import "ResizableTableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)p_contentModel:(id)sender {
    [self.navigationController pushViewController:[ContentModelTableViewController new] animated:YES];
}

- (IBAction)p_cutImage:(id)sender {
    [self.navigationController pushViewController:[CutViewController new] animated:YES];
}

- (IBAction)p_resizableImage:(id)sender {
    [self.navigationController pushViewController:[ResizableTableViewController new] animated:YES];
}

@end
