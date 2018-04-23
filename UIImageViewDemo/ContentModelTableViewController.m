//
//  CntentModelTableViewController.m
//  UIImageViewDemo
//
//  Created by 徐结兵 on 2018/4/16.
//  Copyright © 2018年 八维通. All rights reserved.
//

#import "ContentModelTableViewController.h"
#import "ContentModelViewController.h"

static NSString *ID = @"ContentModelTableCiewModel";

@interface ContentModelTableViewController ()

@property (nonatomic, strong, readwrite) NSArray *dataArray;

@end

@implementation ContentModelTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel.text = [self.dataArray objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    ContentModelViewController *vc = [[ContentModelViewController alloc] init];
    vc.imgView.contentMode = indexPath.row;
    [self.navigationController pushViewController:vc animated:YES];
}

- (NSArray *)dataArray {
    if (!_dataArray) {
        _dataArray = @[@"UIViewContentModeScaleToFill", @"UIViewContentModeScaleAspectFit", @"UIViewContentModeScaleAspectFill", @"UIViewContentModeRedraw", @"UIViewContentModeCenter", @"UIViewContentModeTop", @"UIViewContentModeBottom", @"UIViewContentModeLeft", @"UIViewContentModeRight", @"UIViewContentModeTopLeft", @"UIViewContentModeTopRight", @"UIViewContentModeBottomLeft", @"UIViewContentModeBottomRight"];
    }
    return _dataArray;
}

@end
