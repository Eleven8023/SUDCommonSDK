//
//  SUDTitleViewLabel.m
//  UMSocialShare
//
//  Created by 李赐岩 on 16/1/13.
//  Copyright © 2016年 李赐岩. All rights reserved.
//

#import "SUDTitleViewLabel.h"

@implementation SUDTitleViewLabel

+ (UILabel *)setNavigationBarItemTitleView:(NSString *)labelText
{
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 20)];
    titleLabel.text = labelText;
    titleLabel.textAlignment = NSTextAlignmentCenter;
    titleLabel.font = [UIFont fontWithName:@"FZLanTingYuanS-EL-GB" size:16];
    titleLabel.textColor = [UIColor blackColor];
    titleLabel.adjustsFontSizeToFitWidth = YES;
    return titleLabel;
}






@end
