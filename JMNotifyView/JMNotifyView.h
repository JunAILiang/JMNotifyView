//
//  JMNotifyView.h
//  JMNotifyView
//
//  Created by JM on 2019/1/13.
//  Copyright © 2019 JM. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class JMNotifyViewConfig;
@interface JMNotifyView : UIView

/**
 显示通知
 @param notify 通知文字
 */
+ (JMNotifyView *)showNotify:(NSString *)notify;

+ (JMNotifyView *)showNotify:(NSString *)notify showView:(UIView *)showView;

+ (JMNotifyView *)showNotify:(NSString *)notify showView:(UIView *)showView config:(JMNotifyViewConfig *)config;

@end

/** 背景颜色值的类型, 默认 JMNotifyViewBackgroundTypeSuccess */
typedef NS_ENUM(NSInteger, JMNotifyViewBackgroundColorType) {
    JMNotifyViewBackgroundColorTypeSuccess, //成功
    JMNotifyViewBackgroundColorTypeDanger, //错误
    JMNotifyViewBackgroundColorTypeWarning, //警告
    JMNotifyViewBackgroundColorTypeInfo, //信息
};

/** 通知框出现的样式, 默认 JMNotifyViewStyleFit */
typedef NS_ENUM(NSInteger, JMNotifyViewStyle) {
    JMNotifyViewStyleFit, //默认样式 (上 左 右 有间距)
    JMNotifyViewStyleFill, //填满样式 (上 左 右 无间距)
};

@interface JMNotifyViewConfig : NSObject

/************************** 默认初始化方法 **************************/
+ (JMNotifyViewConfig *)defaultNotifyConfig;

/**************************  通知样式 **************************/
/** 通知样式 */
@property (nonatomic, assign) JMNotifyViewStyle notifyStyle;

/**************************  背景颜色 **************************/
/** 通知视图的背景颜色类型 */
@property (nonatomic, assign) JMNotifyViewBackgroundColorType backgroundColorType;
/** 通知视图的背景颜色(如果 backgroundType 不适用, 可通过此字段进行自定义) */
@property (nonatomic, strong) UIColor *backgroundColor;

/**************************  字体文字设置 **************************/
/** 文字字体大小 (默认 16) */
@property (nonatomic, assign) CGFloat textSize;
/** 文字字体颜色 (默认 black) */
@property (nonatomic, strong) UIColor *textColor;
/** 文字的行间距 (默认 2.f) */
@property (nonatomic, assign) CGFloat textLineSpace;

/**************************  动画设置 **************************/
/** 通知视图悬停时间 (默认 1.5) */
@property (nonatomic, assign) CGFloat notifyViewWaitDuration;


@end

NS_ASSUME_NONNULL_END
