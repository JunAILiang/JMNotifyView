# JMNotifyView
一行代码实现通知视图，零耦合， 适配iPhone X及以上机型
* 超强性能、零耦合
* 默认集成四种通用样式
* 高度自定义

# 版本
* 2018-01-21 初始版本

# 演示
![](https://github.com/JunAILiang/JMAllGif/blob/master/JMNotifyView/notifyView1.gif)

# 如何安装
### 通过CocoaPods导入
```
pod 'JMNotifyView'
```
### 手动导入
```
直接下载工程把JMNotifyView文件夹拖入工程中即可使用
```

# 如何使用
### 1、导入头文件
```
#import "JMNotifyView.h"
```
### 2、一行代码调用（使用方式一）
```
[JMNotifyView showNotify:@"您还未实名, 是否实名?"];
```
### 3、自定义显示在view上（使用方式二）
```
[JMNotifyView showNotify:@"您还未实名, 是否实名?" showView:self.view];
```
### 4、使用系统默认自带样式（使用方式三）
```
// 使用默认自带样式
  JMNotifyViewConfig *config = [JMNotifyViewConfig defaultNotifyConfig];

  // 系统自带默认四种实现类型
  if (sender.tag == 0) { //成功
      config.backgroundColorType = JMNotifyViewBackgroundColorTypeSuccess;
  } else if (sender.tag == 1) { //失败
      config.backgroundColorType = JMNotifyViewBackgroundColorTypeDanger;
  } else if (sender.tag == 2) { //警告
      config.backgroundColorType = JMNotifyViewBackgroundColorTypeWarning;
  } else if (sender.tag == 3) { //信息
      config.backgroundColorType = JMNotifyViewBackgroundColorTypeInfo;
  }
  //显示
  [JMNotifyView showNotify:@"你还未实名, 请实名, 如有问题, 请联系客服" showView:[UIApplication sharedApplication].keyWindow config:config];
```
### 5、高度自定义样式（使用方式四）
```
// 自定义配置
JMNotifyViewConfig *config = [JMNotifyViewConfig defaultNotifyConfig];
// 通知样式
config.notifyStyle = JMNotifyViewStyleFill;
// 自定义背景颜色
config.backgroundColor = [UIColor orangeColor];
// 自定义字体大小
config.textSize = 16.f;
// 自定义文字颜色
config.textColor = [UIColor blackColor];
// 自定义行间距
config.textLineSpace = 4.f;
// 自定义悬停时间
config.notifyViewWaitDuration = 2.f;

//显示
[JMNotifyView showNotify:@"你还未实名, 请实名, 如有问题, 请联系客服" showView:[UIApplication sharedApplication].keyWindow config:config];
```

# 联系我
* QQ群：856876741
* 微信号：liujunmin6980



856876741
