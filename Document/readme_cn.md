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

swift支持敬请期待!

如果在cocoapods搜索不到,可以:

- 1. 执行`pod repo update`
- 2. 删除旧的缓存`rm ~/Library/Caches/CocoaPods/search_index.json`

## 支持功能

### 1.0
支持了通过使用字符串调用Objc方法.调用Appdelegate的方法可以实现多参数传递,普通调用只会传递第一个参数,详细情况参照Api注释.

支持了返回值为`id`, `void`, `int`, `unsigned int`, `short`, `unsigned short`, `long`, `long long`, `float`, `char`, `unsigned char`, `NSInteger`, `BOOL`, `bool`, `CGFloat`, `NSUInteger` 的调用,并通过近百个单元测试case来验证他,中间使用了一些内联函数来优化调用,同时error的抛出也支持各种情况.

### 下一步

* [ ] 支持swift动态调用
* [ ] 支持swift与Objc基本类型转换
* [ ] 支持Objc的block与Swift闭包转换

## pull request

如果想一起开发欢迎提pr,前提是rebase到develop并通过单元测试.

## Author

如果有疑问可以提issure或者通过邮箱联系我

Link, fanyang_32012@outlook.com

## License

UCRuntimeKit is available under the MIT license. See the LICENSE file for more info.
