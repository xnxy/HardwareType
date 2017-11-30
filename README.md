
###  如何判断设备是否为iPhone X，iOS获取设备型号的方法。
 在开发过程中有时需要获取设备具体型号然后进行不同的设配，那么应该如何判断设备的型号？如何获取设置的型号呢？

 在设配`iPhone X`时，因为`iPhone X`中有刘海儿和`Home indicator`， 当时在判断是否为`iPhone X`时是根据其宽高进行判断的。如下：

```
//iPhone X
#define iPhoneX     (kSCREEN_WIDTH == 375.f && kSCREEN_HEIGHT == 812.f)
```
 其中`kSCREEN_WIDTH`、`kSCREEN_HEIGHT`分别为：

```
#define kSCREEN_WIDTH          ([UIScreen mainScreen].bounds.size.width)
#define kSCREEN_HEIGHT         ([UIScreen mainScreen].bounds.size.height)
```
当然也可以使用 `CGSizeEqualToSize(CGSizeMake(375.f, 812.f), [UIScreen mainScreen].bounds.size)`进行判断。但这种方法只能判断`iPhone X`，而像`iPhone 6 plus`、`iPhone 6s Plus`、`iPhone 7 Plus`,`iPhone 8 Plus`其宽高都分别为`414.f`、`736.f`。

```
/*
 iPhone 6          w:375  h:667
 iPhone 6 Plus     w:414  h:736
 iPhone 6s         w:375  h:667
 iPhone 6s Plus    w:414  h:736
 iPhone 7          w:375  h:667
 iPhone 7 Plus     w:414  h:736
 iPhone 8          w:375  h:667
 iPhone 8 Plus     w:414  h:736
 iPhone SE         w:320  h:568
 iPhone X          w:375  h:812
 */
```

所以我们要获取具体的设备型号的时候可以使用`sys/utsname.h`中的`systemInfo`的`machine`进行判断。

![.m中的代码](http://upload-images.jianshu.io/upload_images/1388397-f3be3dce72ee1e16.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

 代码地址：[HardwareType](https://www.theiphonewiki.com/wiki/Models)
 
 简书地址：[如何判断设备是否为iPhone X，iOS获取设备型号的方法。](http://www.jianshu.com/p/d40d701889a6)

------------------


#### 参考资料：
- [苹果设备类型说明](https://www.theiphonewiki.com/wiki/Models)
