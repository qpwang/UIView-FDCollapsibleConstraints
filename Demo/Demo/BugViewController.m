//
//  BugViewController.m
//  Demo
//
//  Created by qpwang on 8/20/15.
//  Copyright (c) 2015 Phil. All rights reserved.
//

#import "BugViewController.h"
#import "BugTableViewCell.h"
#import "UIView+FDCollapsibleConstraints.h"

@interface BugViewController () <UITableViewDelegate, UITableViewDataSource>
@property (nonatomic, assign) NSInteger tableViewRowNum;

@end

@implementation BugViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([BugTableViewCell class]) bundle:[NSBundle mainBundle]] forCellReuseIdentifier:NSStringFromClass([BugTableViewCell class])];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)clickButton:(id)sender
{
    self.tableViewRowNum += 1;
    [self.tableView reloadData];
}

#pragma mark - UITableView Datasource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.tableViewRowNum;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    BugTableViewCell*cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([BugTableViewCell class])];
    cell.bigDogImageView.fd_collapsed = YES;
    return cell;
}

#pragma mark - UITableView Delegate methods

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    return 66.f;
}





@end
