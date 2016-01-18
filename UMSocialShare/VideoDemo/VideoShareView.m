//
//  VideoShareView.m
//  Story
//
//  Created by 李赐岩 on 16/1/11.
//  Copyright © 2016年 lienbao. All rights reserved.
//

#import "VideoShareView.h"

#define WIDTH ([UIScreen mainScreen].bounds.size.width/320)
#define HEIGH ([UIScreen mainScreen].bounds.size.height/568)

@implementation VideoShareView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self creatView];
    }
    return self;
}

- (void)creatView
{
    self.backImageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    self.backImageView.backgroundColor = [UIColor blackColor];
    self.backImageView.alpha = 0.5;
    self.backImageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(removeBackImageView)];
    [self.backImageView addGestureRecognizer:tapGesture];
    [self addSubview:self.backImageView];
    
    self.titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(40 * WIDTH, 295 * HEIGH, [UIScreen mainScreen].bounds.size.width, 16 * HEIGH)];
    self.titleLabel.textColor = [UIColor whiteColor];
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    self.titleLabel.font = [UIFont fontWithName:@"FZLanTingYuanS-EL-GB" size:14 * HEIGH];
    [self addSubview:self.titleLabel];
    [self.titleLabel setTransform:CGAffineTransformMakeRotation(M_PI * 0.5)];
    
    self.shareLabel = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.shareLabel setBackgroundImage:[UIImage imageNamed:@"fenxiangdao"] forState:UIControlStateNormal];
    [self.shareLabel setFrame:CGRectMake(70 * WIDTH, 295 * HEIGH, 200 * WIDTH, 14.5 * HEIGH)];
    [self addSubview:self.shareLabel];
    [self.shareLabel setTransform:CGAffineTransformMakeRotation(M_PI * 0.5)];
    
    self.faceBookBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.faceBookBtn setBackgroundImage:[UIImage imageNamed:@"facebook"] forState:UIControlStateNormal];
    [self.faceBookBtn setFrame:CGRectMake(116 * WIDTH, 211 * HEIGH, 26 * HEIGH, 26 * HEIGH)];
    [self.faceBookBtn addTarget:self action:@selector(shareToFacebook:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.faceBookBtn];
    [self.faceBookBtn setTransform:CGAffineTransformMakeRotation(M_PI * 0.5)];
    
    
    self.friendBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.friendBtn setBackgroundImage:[UIImage imageNamed:@"weichat"] forState:UIControlStateNormal];
    [self.friendBtn setFrame:CGRectMake(116 * WIDTH, 263 * HEIGH, 26 * HEIGH, 26 * HEIGH)];
    [self.friendBtn addTarget:self action:@selector(shareToFriendSquare:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.friendBtn];
    [self.friendBtn setTransform:CGAffineTransformMakeRotation(M_PI * 0.5)];
    
    self.wechatBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.wechatBtn setBackgroundImage:[UIImage imageNamed:@"pengyouquan"] forState:UIControlStateNormal];
    [self.wechatBtn addTarget:self action:@selector(shareToWechat:) forControlEvents:UIControlEventTouchUpInside];
    [self.wechatBtn setFrame:CGRectMake(116 * WIDTH, 317 * HEIGH, 26 * HEIGH, 26 * HEIGH)];
    [self addSubview:self.wechatBtn];
    [self.wechatBtn setTransform:CGAffineTransformMakeRotation(M_PI * 0.5)];
    
    self.sinaBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [self.sinaBtn setBackgroundImage:[UIImage imageNamed:@"weibo"] forState:UIControlStateNormal];
    [self.sinaBtn addTarget:self action:@selector(shareToSina:) forControlEvents:UIControlEventTouchUpInside];
    [self.sinaBtn setFrame:CGRectMake(116 * WIDTH , 369 * HEIGH, 26 * HEIGH, 26 * HEIGH)];
    [self addSubview:self.sinaBtn];
    [self.sinaBtn setTransform:CGAffineTransformMakeRotation(M_PI * 0.5)];

}

- (void)removeBackImageView
{
    [self.shareDelegate startPlayer];
}

- (void)shareToFacebook:(id)sender
{
    [self.shareDelegate shareToFaceBookMethod];
}

- (void)shareToFriendSquare:(id)sender
{
    [self.shareDelegate shareToWechatMethod];
}

- (void)shareToWechat:(id)sender
{
    [self.shareDelegate shareToFriendMethod];
}

- (void)shareToSina:(id)sender
{
    [self.shareDelegate shareToSinaMethod];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
