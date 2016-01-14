//
//  SUDUMSocialShare.m
//  UMSocialShare
//
//  Created by 李赐岩 on 16/1/13.
//  Copyright © 2016年 李赐岩. All rights reserved.
//

#import "SUDUMSocialShare.h"

@implementation SUDUMSocialShare

+ (void)shareVideoTofacebook:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:shareImageUrl] options:SDWebImageRetryFailed progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        UMSocialUrlResource *resource = [[UMSocialUrlResource alloc] initWithSnsResourceType:UMSocialUrlResourceTypeVideo url:shareUrl];
        [UMSocialData defaultData].extConfig.title = shareTitle;
        [[UMSocialDataService defaultDataService] postSNSWithTypes:@[UMShareToFacebook] content:shareSubtitle image:image location:nil urlResource:resource presentedController:currentControler completion:^(UMSocialResponseEntity *response) {
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
            }
        }];
        
    }];
}

+ (void)shareMusicTofaceBook:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:shareImageUrl] options:SDWebImageRetryFailed progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        UMSocialUrlResource *resource = [[UMSocialUrlResource alloc] initWithSnsResourceType:UMSocialUrlResourceTypeMusic url:shareUrl];
        [UMSocialData defaultData].extConfig.title = shareTitle;
        [[UMSocialDataService defaultDataService] postSNSWithTypes:@[UMShareToFacebook] content:shareSubtitle image:image location:nil urlResource:resource presentedController:currentControler completion:^(UMSocialResponseEntity *response) {
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
            }
        }];
        
    }];

}

+ (void)shareImagetoFaceBook:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:shareImageUrl] options:SDWebImageRetryFailed progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        UMSocialUrlResource *resource = [[UMSocialUrlResource alloc] initWithSnsResourceType:UMSocialUrlResourceTypeImage url:shareUrl];
        [UMSocialData defaultData].extConfig.title = shareTitle;
        [[UMSocialDataService defaultDataService] postSNSWithTypes:@[UMShareToFacebook] content:shareSubtitle image:image location:nil urlResource:resource presentedController:currentControler completion:^(UMSocialResponseEntity *response) {
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
            }
        }];
        
    }];

}

+ (void)shareVideoToWechat:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:shareImageUrl] options:SDWebImageRetryFailed progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        UMSocialUrlResource *resource = [[UMSocialUrlResource alloc] initWithSnsResourceType:UMSocialUrlResourceTypeVideo url:shareUrl];
        NSString *snsName = [UMSocialSnsPlatformManager getSnsPlatformString:UMSocialSnsTypeWechatSession];
        [UMSocialData defaultData].extConfig.title = shareTitle;
        [[UMSocialDataService defaultDataService] postSNSWithTypes:@[snsName] content:shareSubtitle image:image location:nil urlResource:resource presentedController:currentControler completion:^(UMSocialResponseEntity *response) {
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
            }
        }];
        
    }];
}

+ (void)shareMusicToWechat:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:shareImageUrl] options:SDWebImageRetryFailed progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        UMSocialUrlResource *resource = [[UMSocialUrlResource alloc] initWithSnsResourceType:UMSocialUrlResourceTypeMusic url:shareUrl];
        NSString *snsName = [UMSocialSnsPlatformManager getSnsPlatformString:UMSocialSnsTypeWechatSession];
        [UMSocialData defaultData].extConfig.title = shareTitle;
        [[UMSocialDataService defaultDataService] postSNSWithTypes:@[snsName] content:shareSubtitle image:image location:nil urlResource:resource presentedController:currentControler completion:^(UMSocialResponseEntity *response) {
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
            }
        }];
        
    }];

}

+ (void)shareImageToWechat:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:shareImageUrl] options:SDWebImageRetryFailed progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        UMSocialUrlResource *resource = [[UMSocialUrlResource alloc] initWithSnsResourceType:UMSocialUrlResourceTypeImage url:shareUrl];
        NSString *snsName = [UMSocialSnsPlatformManager getSnsPlatformString:UMSocialSnsTypeWechatSession];
        [UMSocialData defaultData].extConfig.title = shareTitle;
        [[UMSocialDataService defaultDataService] postSNSWithTypes:@[snsName] content:shareSubtitle image:image location:nil urlResource:resource presentedController:currentControler completion:^(UMSocialResponseEntity *response) {
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
            }
        }];
        
    }];

}

+ (void)shareVideoToSina:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[UMSocialData defaultData].urlResource setResourceType:UMSocialUrlResourceTypeVideo url:shareUrl];
    [UMSocialData defaultData].extConfig.title = shareTitle;
    [UMSocialData defaultData].shareText = shareSubtitle;
    UMSocialSnsPlatform *snsPlatform = [UMSocialSnsPlatformManager getSocialPlatformWithName:@"sina"];
    snsPlatform.snsClickHandler(currentControler,[UMSocialControllerService defaultControllerService], YES);
    completion();
}

+ (void)shareMusicToSina:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[UMSocialData defaultData].urlResource setResourceType:UMSocialUrlResourceTypeMusic url:shareUrl];
    [UMSocialData defaultData].extConfig.title = shareTitle;
    [UMSocialData defaultData].shareText = shareSubtitle;
    UMSocialSnsPlatform *snsPlatform = [UMSocialSnsPlatformManager getSocialPlatformWithName:@"sina"];
    snsPlatform.snsClickHandler(currentControler,[UMSocialControllerService defaultControllerService], YES);
    completion();
}

+ (void)shareImageToSina:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[UMSocialData defaultData].urlResource setResourceType:UMSocialUrlResourceTypeImage url:shareUrl];
    [UMSocialData defaultData].extConfig.title = shareTitle;
    [UMSocialData defaultData].shareText = [NSString stringWithFormat:@"%@, %@", shareSubtitle, shareUrl];
    UMSocialSnsPlatform *snsPlatform = [UMSocialSnsPlatformManager getSocialPlatformWithName:@"sina"];
    snsPlatform.snsClickHandler(currentControler,[UMSocialControllerService defaultControllerService], YES);
    completion();
}

+ (void)shareVideoToWechatFriend:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:shareImageUrl] options:SDWebImageRetryFailed progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        UMSocialUrlResource *resource = [[UMSocialUrlResource alloc] initWithSnsResourceType:UMSocialUrlResourceTypeVideo url:shareUrl];
        NSString *snsName = [UMSocialSnsPlatformManager getSnsPlatformString:UMSocialSnsTypeWechatTimeline];
        [UMSocialData defaultData].extConfig.title = shareTitle;
        [[UMSocialDataService defaultDataService] postSNSWithTypes:@[snsName] content:shareSubtitle image:image location:nil urlResource:resource presentedController:currentControler completion:^(UMSocialResponseEntity *response) {
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
            }
        }];
        
    }];
}

+ (void)shareMusicToWechatFriend:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:shareImageUrl] options:SDWebImageRetryFailed progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        UMSocialUrlResource *resource = [[UMSocialUrlResource alloc] initWithSnsResourceType:UMSocialUrlResourceTypeMusic url:shareUrl];
        NSString *snsName = [UMSocialSnsPlatformManager getSnsPlatformString:UMSocialSnsTypeWechatTimeline];
        [UMSocialData defaultData].extConfig.title = shareTitle;
        [[UMSocialDataService defaultDataService] postSNSWithTypes:@[snsName] content:shareSubtitle image:image location:nil urlResource:resource presentedController:currentControler completion:^(UMSocialResponseEntity *response) {
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
            }
        }];
        
    }];

}

+ (void)shareImageToWechatFriend:(NSString *)shareUrl shareImageUrl:(NSString *)shareImageUrl shareTitle:(NSString *)shareTitle shareSubtitle:(NSString *)shareSubtitle currentController:(UIViewController *)currentControler shareCompletion:(shareComplete)completion
{
    [[SDWebImageManager sharedManager] downloadImageWithURL:[NSURL URLWithString:shareImageUrl] options:SDWebImageRetryFailed progress:nil completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, BOOL finished, NSURL *imageURL) {
        UMSocialUrlResource *resource = [[UMSocialUrlResource alloc] initWithSnsResourceType:UMSocialUrlResourceTypeImage url:shareUrl];
        NSString *snsName = [UMSocialSnsPlatformManager getSnsPlatformString:UMSocialSnsTypeWechatTimeline];
        [UMSocialData defaultData].extConfig.title = shareTitle;
        [[UMSocialDataService defaultDataService] postSNSWithTypes:@[snsName] content:shareSubtitle image:image location:nil urlResource:resource presentedController:currentControler completion:^(UMSocialResponseEntity *response) {
            
            if (response.responseCode == UMSResponseCodeSuccess) {
                
            }
        }];
        
    }];

}


@end
