//
//  ViewController.m
//  UMSocialShare
//
//  Created by 李赐岩 on 16/1/11.
//  Copyright © 2016年 李赐岩. All rights reserved.
//

#import "ViewController.h"
#import <PureLayout/PureLayout.h>
#import "SUDTitleViewLabel.h"
#import "SUDUMSocialShare.h"
#import "TakePhotoViewController.h"
#import "VideoViewController.h"
#import "MJRefreshTableViewController.h"
#import "MJRefreshGifTableViewController.h"
@interface ViewController ()

@property (nonatomic, strong) UIView *blueView;
@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *yellowView;
@property (nonatomic, strong) UIView *greenView;
@property (nonatomic, strong) UIButton *faceBookBtn;
@property (nonatomic, strong) UIButton *weichatBtn;
@property (nonatomic, strong) UIButton *friendBtn;
@property (nonatomic, strong) UIButton *sinaBtn;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, assign) BOOL didSetupConstraints;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)loadView
{
    self.view = [UIView new];
    self.view.userInteractionEnabled = YES;
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.blueView];
    [self.view addSubview:self.redView];
    [self.view addSubview:self.yellowView];
    [self.view addSubview:self.greenView];
    [self.view addSubview:self.faceBookBtn];
    [self.view addSubview:self.weichatBtn];
    [self.view addSubview:self.friendBtn];
    [self.view addSubview:self.sinaBtn];
    [self.view setNeedsUpdateConstraints];
    self.navigationItem.titleView = [SUDTitleViewLabel setNavigationBarItemTitleView:@"微阵"];
}

- (void)updateViewConstraints
{
    if (!self.didSetupConstraints) {
        NSArray *views = @[self.blueView, self.redView, self.yellowView, self.greenView];
        [views autoSetViewsDimension:ALDimensionHeight toSize:50.0];
        [views autoDistributeViewsAlongAxis:ALAxisHorizontal alignedTo:ALAttributeHorizontal withFixedSpacing:10.0 insetSpacing:YES matchedSizes:YES];
        [self.redView autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:100];
        
        NSArray *buttons = @[self.faceBookBtn, self.weichatBtn, self.friendBtn, self.sinaBtn];
        [buttons autoSetViewsDimension:ALDimensionHeight toSize:50];
        [buttons autoDistributeViewsAlongAxis:ALAxisHorizontal alignedTo:ALAttributeHorizontal withFixedSpacing:20.0 insetSpacing:YES matchedSizes:YES];
        [self.weichatBtn autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:400];
        self.didSetupConstraints = YES;
    }
    
    [super updateViewConstraints];
}
#pragma mark - 懒加载
- (UIView *)blueView
{
    if (!_blueView) {
        _blueView = [UIView newAutoLayoutView];
        _blueView.backgroundColor = [UIColor blueColor];
        _blueView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(takePhotoPicker:)];
        [_blueView addGestureRecognizer:tapAction];
    }
    return _blueView;
}

- (UIView *)redView
{
    if (!_redView) {
        _redView = [UIView newAutoLayoutView];
        _redView.backgroundColor = [UIColor redColor];
        _redView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(videoPlayer:)];
        [_redView addGestureRecognizer:tapAction];
    }
    return _redView;
}

- (UIView *)greenView
{
    if (!_greenView) {
        _greenView = [UIView newAutoLayoutView];
        _greenView.backgroundColor = [UIColor greenColor];
        _greenView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(MJRefreshAction:)];
        [_greenView addGestureRecognizer:tapAction];
    }
    return _greenView;
}

- (UIView *)yellowView
{
    if (!_yellowView) {
        _yellowView = [UIView newAutoLayoutView];
        _yellowView.backgroundColor = [UIColor yellowColor];
        _yellowView.userInteractionEnabled = YES;
        UITapGestureRecognizer *tapAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(MJRefreshGifAction:)];
        [_yellowView addGestureRecognizer:tapAction];
    }
    return _yellowView;
}

- (UIButton *)faceBookBtn
{
    if (!_faceBookBtn) {
        _faceBookBtn = [UIButton newAutoLayoutView];
        _faceBookBtn.backgroundColor = [UIColor cyanColor];
        [_faceBookBtn setTitle:@"分享到FaceBook" forState:UIControlStateNormal];
        [_faceBookBtn addTarget:self action:@selector(shareToFacebook:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _faceBookBtn;
}

- (UIButton *)weichatBtn
{
    if (!_weichatBtn) {
        _weichatBtn = [UIButton newAutoLayoutView];
        _weichatBtn.backgroundColor = [UIColor grayColor];
        [_weichatBtn setTitle:@"分享到微信好友" forState:UIControlStateNormal];
        [_weichatBtn addTarget:self action:@selector(shareToWeichat:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _weichatBtn;
}

- (UIButton *)friendBtn
{
    if (!_friendBtn) {
        _friendBtn = [UIButton newAutoLayoutView];
        _friendBtn.backgroundColor = [UIColor greenColor];
        [_friendBtn setTitle:@"朋友圈" forState:UIControlStateNormal];
        [_friendBtn addTarget:self action:@selector(shareTofriend:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _friendBtn;
}

- (UIButton *)sinaBtn
{
    if (!_sinaBtn) {
        _sinaBtn = [UIButton newAutoLayoutView];
        _sinaBtn.backgroundColor = [UIColor redColor];
        [_sinaBtn setTitle:@"新浪" forState:UIControlStateNormal];
        [_sinaBtn addTarget:self action:@selector(shareToSina:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _sinaBtn;
}



#pragma mark -shareAction 
- (void)shareToFacebook:(UIButton *)sender
{
    [SUDUMSocialShare shareVideoTofacebook:@"http://baobab.cdn.wandoujia.com/14447196790651.mp4" shareImageUrl:@"http://img.wdjimg.com/image/video/434dae98fe6bd62d0478465a447bb117_0_0.jpeg" shareTitle:@"大水杯" shareSubtitle:@"浪漫口香糖之恋" currentController:self shareCompletion:^{
        
    }];
}

- (void)shareToWeichat:(UIButton *)sender
{
    [SUDUMSocialShare shareVideoToWechat:@"http://baobab.cdn.wandoujia.com/14447196790651.mp4" shareImageUrl:@"http://img.wdjimg.com/image/video/434dae98fe6bd62d0478465a447bb117_0_0.jpeg" shareTitle:@"大水杯" shareSubtitle:@"浪漫口香糖之恋" currentController:self shareCompletion:^{
        UIAlertView *alterView = [[UIAlertView alloc] initWithTitle:@"分享到" message:@"微信" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:@"取消", nil];
        [alterView show];
        
    }];
}

- (void)shareTofriend:(UIButton *)sender
{
    [SUDUMSocialShare shareVideoToWechatFriend:@"http://baobab.cdn.wandoujia.com/14447196790651.mp4" shareImageUrl:@"http://img.wdjimg.com/image/video/434dae98fe6bd62d0478465a447bb117_0_0.jpeg" shareTitle:@"大水杯" shareSubtitle:@"三十七万贰仟人" currentController:self shareCompletion:^{
        
    }];
}

- (void)shareToSina:(UIButton *)sender
{
    [SUDUMSocialShare shareVideoToSina:@"http://baobab.cdn.wandoujia.com/14447196790651.mp4" shareImageUrl:@"http://img.wdjimg.com/image/video/434dae98fe6bd62d0478465a447bb117_0_0.jpeg" shareTitle:@"大水杯" shareSubtitle:@"浪漫口香糖之恋" currentController:self shareCompletion:^{
        
    }];
}

- (void)takePhotoPicker:(UITapGestureRecognizer *)sender
{
    TakePhotoViewController *takePhotoVC = [[TakePhotoViewController alloc] init];
    [self.navigationController pushViewController:takePhotoVC animated:YES];
}

- (void)videoPlayer:(UITapGestureRecognizer *)sender
{
    VideoViewController *videoVC = [[VideoViewController alloc] init];
    [self presentViewController:videoVC animated:NO completion:^{
        
    }];
}

- (void)MJRefreshAction:(UITapGestureRecognizer *)sender
{
    MJRefreshTableViewController *mjrereshVC = [[MJRefreshTableViewController alloc] init];
    [self.navigationController pushViewController:mjrereshVC animated:YES];
}

- (void)MJRefreshGifAction:(UITapGestureRecognizer *)sender
{
    MJRefreshGifTableViewController *mjGifVC = [[MJRefreshGifTableViewController alloc] init];
    [self.navigationController pushViewController:mjGifVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
