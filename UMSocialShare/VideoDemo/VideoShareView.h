//
//  VideoShareView.h
//  Story
//
//  Created by 李赐岩 on 16/1/11.
//  Copyright © 2016年 lienbao. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol shareToPlatform <NSObject>

- (void)shareToFaceBookMethod;
- (void)shareToFriendMethod;
- (void)shareToWechatMethod;
- (void)shareToSinaMethod;
- (void)startPlayer;
@end


@interface VideoShareView : UIView

@property (nonatomic, strong) UIImageView *backImageView;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIButton *shareLabel;
@property (nonatomic, strong) UIButton *faceBookBtn;
@property (nonatomic, strong) UIButton *friendBtn;
@property (nonatomic, strong) UIButton *wechatBtn;
@property (nonatomic, strong) UIButton *sinaBtn;

@property (nonatomic, assign) id<shareToPlatform> shareDelegate;


@end
