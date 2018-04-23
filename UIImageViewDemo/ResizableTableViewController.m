//
//  ResizableTableViewController.m
//  UIImageViewDemo
//
//  Created by 徐结兵 on 2018/4/16.
//  Copyright © 2018年 八维通. All rights reserved.
//

#import "ResizableTableViewController.h"
#import "ResizableViewController.h"
#import "ButtonViewController.h"

@interface ResizableTableViewController ()

@property (nonatomic, strong, readwrite) NSArray *dataArray;

@end

@implementation ResizableTableViewController

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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ResizableTableViewController"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ResizableTableViewController"];
    }
    cell.textLabel.text = [self.dataArray objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 4) {
        [self.navigationController pushViewController:[ButtonViewController new] animated:YES];
        return;
    }
    ResizableViewController *vc = [[ResizableViewController alloc] init];
    vc.type = indexPath.row;
    [self.navigationController pushViewController:vc animated:YES];
}

- (NSArray *)dataArray {
    if (!_dataArray) {
        _dataArray = @[@"默认样式", @"保持原有比例，不变形", @"局部拉伸", @"以中间2个像素为中心拉伸", @"效果对比"];
    }
    return _dataArray;
}

@end
