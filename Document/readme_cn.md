# UCRuntimeKit

[![Version](https://img.shields.io/cocoapods/v/UCRuntimeKit.svg?style=flat)](https://cocoapods.org/pods/UCRuntimeKit)
[![License](https://img.shields.io/cocoapods/l/UCRuntimeKit.svg?style=flat)](https://cocoapods.org/pods/UCRuntimeKit)
[![Platform](https://img.shields.io/cocoapods/p/UCRuntimeKit.svg?style=flat)](https://cocoapods.org/pods/UCRuntimeKit)


| Branch | Build States  |
| --- | ---  |
| Master  |[![CI Status](https://travis-ci.org/TryRuntime/UCRuntimeKit.svg?branch=master)](https://travis-ci.org/TryRuntime/UCRuntimeKit)|
| Develop |[![CI Status](https://api.travis-ci.org/TryRuntime/UCRuntimeKit.svg?branch=develop)](https://travis-ci.org/TryRuntime/UCRuntimeKit) |

## 安装

只使用Objc模块功能的话可以直接`pod 'UCRuntimeKit/UCMediatorObjc'`

如果在cocoapods搜索不到,可以:

- 1. 执行`pod repo update`
- 2. 删除旧的缓存`rm ~/Library/Caches/CocoaPods/search_index.json`

## 支持功能

### 1.0
支持了通过使用字符串调用Objc方法.调用Appdelegate的方法可以实现多参数传递,普通调用只会传递第一个参数,详细情况参照Api注释.

支持了返回值为`id`, `void`, `int`, `unsigned int`, `short`, `unsigned short`, `long`, `long long`, `float`, `char`, `unsigned char`, `NSInteger`, `BOOL`, `bool`, `CGFloat`, `NSUInteger` 的调用,并通过近百个单元测试case来验证他,中间使用了一些内联函数来优化调用,同时error的抛出也支持各种情况.

Objc的单元测试如下,也可以看看是如何使用的

- Objc -> category -> Objc [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMeditorObjcTest/UCMeditorNativeTargetInvoke.m)
- 通过第三方URL调用,以及过滤 [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMeditorObjcTest/UCThirdPartUrlInvoke.m)
- 本地URL调用,不走过滤 [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMeditorObjcTest/UCNativeUrlInvoke.m)

### 1.1
新增了以下几种单元测试情况,同时也可以看下这几种情况是怎么去掉用的

- Objc -> category -> Swift [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMediatorSwiftTest/UCMediatorObjcCategorySwiftTest.m)
- Objc -> extension -> Objc [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMediatorSwiftTest/UCMediatorObjcExtensionObjcTest.m)
- Objc -> extension -> Swift [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMediatorSwiftTest/UCMediatorObjcExtensionSwiftTest.m)
- Swift -> category -> Objc [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMediatorSwiftTest/UCMediatorSwiftCategoryObjcTest.swift)
- Swift -> category -> Swift [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMediatorSwiftTest/UCMediatorSwiftCategorySwiftTest.swift)
- Swift -> extension -> Objc [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMediatorSwiftTest/UCMediatorSwiftExtensionObjcTest.swift)
- Swift -> extension -> Swift [链接](https://github.com/TryRuntime/UCRuntimeKit/blob/master/Example/Tests/UCMediatorSwiftTest/UCMediatorSwiftExtensionSwiftTest.swift)

除了1.0支持的返回值,新增了例如Swift的String, Dictionary, Array的返回值测试,同时测试了例如String与NSString, Array与NSArray, Dictionary与NSDictionary的互相转换.Block与Closure的转换也是支持的,但在通过Runtime调用时只能通过对象包裹一下block,推荐使用`UCMediatorArgument`.

另外需要注意的是对象转变Float与Double的过程中存在着精度丢失.

## pull request

如果想一起开发欢迎提pr,前提是rebase到develop并通过单元测试.

## Author

如果有疑问可以提issure或者通过邮箱联系我

Link, fanyang_32012@outlook.com

## License

UCRuntimeKit is available under the MIT license. See the LICENSE file for more info.
