//
//  MJRefreshGifTableViewController.m
//  UMSocialShare
//
//  Created by 李赐岩 on 16/1/18.
//  Copyright © 2016年 李赐岩. All rights reserved.
//

#import "MJRefreshGifTableViewController.h"
#import "SUDMJAnimationFooter.h"
#import "SUDMJAnimationHeader.h"

#define MJRandomData [NSString stringWithFormat:@"随机数据---%d", arc4random_uniform(1000000)]

static const CGFloat MJDuration = 0.5;
@interface MJRefreshGifTableViewController ()
// 用来显示数据
@property(nonatomic,strong)NSMutableArray *data;
@end

@implementation MJRefreshGifTableViewController

- (NSMutableArray *)data
{
    if (!_data) {
        self.data = [NSMutableArray array];
        for (int i = 0; i<3; i++) {
            [self.data addObject:MJRandomData];
        }
    }
    return _data;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    
    self.tableView.separatorStyle=UITableViewCellSeparatorStyleSingleLine;
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    __typeof(self) tableView =self;
    /**************动画刷新****************/
    self.tableView.mj_header=[SUDMJAnimationHeader headerWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
    [self.tableView.mj_header beginRefreshing];
    
    self.tableView.mj_footer=[SUDMJAnimationFooter footerWithRefreshingTarget:self refreshingAction:@selector(loadNewData)];
    [self.tableView.mj_footer beginRefreshing];
}

-(void)loadNewData
{
    for (int i =0; i<2; i++) {
        [self.data insertObject:MJRandomData atIndex:0];
    }
    // 2.模拟2秒后刷新表格UI（真实开发中，可以移除这段gcd代码）
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(MJDuration * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        // 刷新表格
        [self.tableView reloadData];
        
        // 拿到当前的上拉刷新控件，结束刷新状态
        [self.tableView.mj_header endRefreshing];
        [self.tableView.mj_footer endRefreshing];
    });
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.data.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }

    cell.textLabel.text = [NSString stringWithFormat:@"%@ - %@", indexPath.row % 2?@"push":@"modal", self.data[indexPath.row]];
    return cell;
}


@end
