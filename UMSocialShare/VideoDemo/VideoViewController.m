//
//  VideoViewController.m
//  UMSocialShare
//
//  Created by 李赐岩 on 16/1/15.
//  Copyright © 2016年 李赐岩. All rights reserved.
//

#import "VideoViewController.h"
#import "VideoShareView.h"
#import "KrVideoPlayerController.h"

@interface VideoViewController ()<topBarActionDelegate, shareToPlatform>

@property (nonatomic, strong) KrVideoPlayerController *videoController;

@property (nonatomic, strong) VideoShareView *shareView;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    self.view.frame = [UIScreen mainScreen].bounds;
    [self playVideo];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)playVideo{
    NSURL *url = [NSURL URLWithString:@"http://krtv.qiniudn.com/150522nextapp"];
    [self addVideoPlayerWithURL:url];
}

- (void)addVideoPlayerWithURL:(NSURL *)url{
    if (!self.videoController) {
        CGFloat width = [UIScreen mainScreen].bounds.size.width;
        CGFloat screenHeight = [UIScreen mainScreen].bounds.size.height;
        self.videoController = [[KrVideoPlayerController alloc] initWithFrame:CGRectMake(0, 0, screenHeight, width)];
        self.videoController.view.center = self.view.center;
        self.videoController.topBarDelegate = self;
        self.videoController.videoControl.titleLabel.text = @"大水杯的自娱自乐生活";
        self.videoController.view.transform = CGAffineTransformMakeRotation(M_PI / 2);
        __weak typeof(self)weakSelf = self;
        //        [self.videoController setDimissCompleteBlock:^{
        //            weakSelf.videoController = nil;
        //        }];
        //        [self.videoController setWillBackOrientationPortrait:^{
        //            [weakSelf toolbarHidden:NO];
        //        }];
        [self.videoController setWillChangeToFullscreenMode:^{
            [weakSelf toolbarHidden:YES];
        }];
        [self.view addSubview:self.videoController.view];
    }
    self.videoController.contentURL = url;
    
}
//隐藏navigation tabbar 电池栏
- (void)toolbarHidden:(BOOL)Bool{
    self.navigationController.navigationBar.hidden = Bool;
    self.tabBarController.tabBar.hidden = Bool;
    [[UIApplication sharedApplication] setStatusBarHidden:YES withAnimation:UIStatusBarAnimationFade];
}

- (BOOL)prefersStatusBarHidden{
    return YES;
}

- (BOOL)shouldAutorotate
{
    return NO;
}
#pragma mark -返回上一界面 并且结束视频播放
- (void)returnFrontPage
{
    [self dismissViewControllerAnimated:YES completion:^{
        [self.videoController stop];
    }];
}

- (void)clickMoreBtnAction
{
    _shareView = [[VideoShareView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width)];
    _shareView.shareDelegate = self;
    [self.view addSubview:_shareView];
}

- (void)startPlayer
{
    [self.videoController play];
    [_shareView removeFromSuperview];
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
