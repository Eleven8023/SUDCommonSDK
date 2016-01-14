//
//  SUDUMSocialShare.h
//  UMSocialShare
//
//  Created by 李赐岩 on 16/1/13.
//  Copyright © 2016年 李赐岩. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UMSocial.h"
#import "UIImageView+WebCache.h"
typedef void(^shareComplete)(void);
@interface SUDUMSocialShare : NSObject

/*
 * @brief facebook自定义分享视频连接
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareVideoTofacebook:(NSString *)shareUrl
          shareImageUrl:(NSString *)shareImageUrl
             shareTitle:(NSString *)shareTitle
          shareSubtitle:(NSString *)shareSubtitle
      currentController:(UIViewController *)currentControler
        shareCompletion:(shareComplete)completion;


/*
 * @brief facebook自定义分享音频连接
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */

+ (void)shareMusicTofaceBook:(NSString *)shareUrl
               shareImageUrl:(NSString *)shareImageUrl
                  shareTitle:(NSString *)shareTitle
               shareSubtitle:(NSString *)shareSubtitle
           currentController:(UIViewController *)currentControler
             shareCompletion:(shareComplete)completion;
/*
 * @brief facebook自定义分享图片连接
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */

+ (void)shareImagetoFaceBook:(NSString *)shareUrl
               shareImageUrl:(NSString *)shareImageUrl
                  shareTitle:(NSString *)shareTitle
               shareSubtitle:(NSString *)shareSubtitle
           currentController:(UIViewController *)currentControler
             shareCompletion:(shareComplete)completion;


/*
 * @brief 微信自定义视频界面分享
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareVideoToWechat:(NSString *)shareUrl
             shareImageUrl:(NSString *)shareImageUrl
                shareTitle:(NSString *)shareTitle
             shareSubtitle:(NSString *)shareSubtitle
         currentController:(UIViewController *)currentControler
           shareCompletion:(shareComplete)completion;
/*
 * @brief 微信自定义音频界面分享
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareMusicToWechat:(NSString *)shareUrl
             shareImageUrl:(NSString *)shareImageUrl
                shareTitle:(NSString *)shareTitle
             shareSubtitle:(NSString *)shareSubtitle
         currentController:(UIViewController *)currentControler
           shareCompletion:(shareComplete)completion;

/*
 * @brief 微信自定义图片界面分享
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareImageToWechat:(NSString *)shareUrl
             shareImageUrl:(NSString *)shareImageUrl
                shareTitle:(NSString *)shareTitle
             shareSubtitle:(NSString *)shareSubtitle
         currentController:(UIViewController *)currentControler
           shareCompletion:(shareComplete)completion;

/*
 * @brirf 新浪微博自定义视频分享界面
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareVideoToSina:(NSString *)shareUrl
           shareImageUrl:(NSString *)shareImageUrl
              shareTitle:(NSString *)shareTitle
           shareSubtitle:(NSString *)shareSubtitle
       currentController:(UIViewController *)currentControler
         shareCompletion:(shareComplete)completion;
/*
 * @brirf 新浪微博自定义音频分享界面
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareMusicToSina:(NSString *)shareUrl
           shareImageUrl:(NSString *)shareImageUrl
              shareTitle:(NSString *)shareTitle
           shareSubtitle:(NSString *)shareSubtitle
       currentController:(UIViewController *)currentControler
         shareCompletion:(shareComplete)completion;
/*
 * @brirf 新浪微博自定义图片分享界面
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareImageToSina:(NSString *)shareUrl
           shareImageUrl:(NSString *)shareImageUrl
              shareTitle:(NSString *)shareTitle
           shareSubtitle:(NSString *)shareSubtitle
       currentController:(UIViewController *)currentControler
         shareCompletion:(shareComplete)completion;
/*
 * @brief 微信朋友圈自定义视频分享界面
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareVideoToWechatFriend:(NSString *)shareUrl
                   shareImageUrl:(NSString *)shareImageUrl
                      shareTitle:(NSString *)shareTitle
                   shareSubtitle:(NSString *)shareSubtitle
               currentController:(UIViewController *)currentControler
                 shareCompletion:(shareComplete)completion;
/*
 * @brief 微信朋友圈自定义音频分享界面
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareMusicToWechatFriend:(NSString *)shareUrl
                   shareImageUrl:(NSString *)shareImageUrl
                      shareTitle:(NSString *)shareTitle
                   shareSubtitle:(NSString *)shareSubtitle
               currentController:(UIViewController *)currentControler
                 shareCompletion:(shareComplete)completion;
/*
 * @brief 微信朋友圈自定义图片分享界面
 * @params 视频链接 图片加载链接 分享标题 分享副标题 完成后的block回调事件
 */
+ (void)shareImageToWechatFriend:(NSString *)shareUrl
                   shareImageUrl:(NSString *)shareImageUrl
                      shareTitle:(NSString *)shareTitle
                   shareSubtitle:(NSString *)shareSubtitle
               currentController:(UIViewController *)currentControler
                 shareCompletion:(shareComplete)completion;

@end
