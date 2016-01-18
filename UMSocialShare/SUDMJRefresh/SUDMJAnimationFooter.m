//
//  SUDMJAnimationFooter.m
//  UMSocialShare
//
//  Created by 李赐岩 on 16/1/18.
//  Copyright © 2016年 李赐岩. All rights reserved.
//

#import "SUDMJAnimationFooter.h"

@implementation SUDMJAnimationFooter

#pragma mark - 重写方法
#pragma mark - 基本设置

- (void)prepare
{
    [super prepare];
    
    NSMutableArray *refreshingImages = [NSMutableArray array];
    for (NSUInteger i = 1; i <= 3; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"dropdown_loading_0%zd", i]];
        [refreshingImages addObject:image];
    }
    [self setImages:refreshingImages forState:MJRefreshStateRefreshing];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
