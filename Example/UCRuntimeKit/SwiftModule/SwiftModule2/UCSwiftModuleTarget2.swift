//
//  UCSwiftModuleTarget2.swift
//  UCRuntimeKit
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//

import UIKit
import UCRuntimeKit

@objc class UCSwiftModuleTarget2: NSObject {

    @objc
    func testClosure(_ paramsObj: UCMediatorArgument) {
        paramsObj.completionCallBack(["key": "调用block"])
    }
    
    @objc
    func getController(_ paramsObj: UCMediatorArgument) -> UIViewController {
        return UCSwiftModule2ViewController()
    }
    
    @objc
    func noReturnNoParameter() {
        print("🍎🍎🍎🍎🍎🍎🍎🍎调用了无参无返回值函数")
    }
    
    @objc
    func returnInt() -> Int {
        return 1
    }
    
    @objc
    func returnUInt() -> UInt {
        let a = UInt(2)
        return a
    }
    
    @objc
    func returnShort() -> CShort {
        let a = CShort(3)
        return a
    }
    
    @objc
    func returnUShort() -> ushort {
        let a = ushort(4)
        return a
    }
    
    @objc
    func returnLong() -> CLong {
        let a = CLong(5)
        return a
    }
    
    @objc
    func returnLongLong() -> CLongLong {
        let a = CLongLong(6)
        return a
    }
    
    @objc
    func returnULongLong() -> CUnsignedLongLong {
        let a = CUnsignedLongLong(7)
        return a
    }
    
    @objc
    func returnFloat() -> Float {
        let a = Float(0.1)
        return a
    }
    
    @objc
    func returnDouble() -> Double {
        let a = Double(0.2)
        return a
    }
    
    @objc
    func returnChar() -> CChar {
        let a = 65
        return CChar(a)
    }
    
    @objc
    func returnUChar() -> CUnsignedChar {
        let a = 66
        return CUnsignedChar(a)
    }
    
    @objc
    func returnTrue() -> Bool {
        return true
    }
    
    @objc
    func returnFalse() -> Bool {
        return false
    }
    
    @objc
    func returnInteger() -> NSInteger {
        return 1
    }
    
    @objc
    func returnCGFloat() -> CGFloat {
        return 0.2
    }
    
    @objc
    func returnNSString() -> NSString {
        return "123"
    }
    
    @objc
    func returnString() -> String {
        return "456"
    }
    
    @objc
    func returnAny() -> Any {
        return "789"
    }
    
    @objc
    func returnIntArray() -> [Int] {
        return [1, 2, 3]
    }
    
    @objc
    func returnStringArray() -> [String] {
        return ["1", "2", "3"]
    }
    
    @objc
    func returnNSStringArray() -> [NSString] {
        return ["4", "5", "6"]
    }
    
    @objc
    func returnDictionary() -> [String: Int] {
        return ["key": 1]
    }
    
    @objc
    func returnNSDictionary() -> NSDictionary {
        return ["key": 2]
    }
    
    @objc
    func returnNSNumber() -> NSNumber {
        return NSNumber(integerLiteral: 1)
    }
    
    @objc
    func returnSuccessBlock(_ paramsObj: UCMediatorArgument) {
        let successBlock = paramsObj.completionCallBack
        successBlock(["key": 123])
    }

    @objc
    func returnSelf(_ paramsObj: UCMediatorArgument) -> UCMediatorArgument {
        return paramsObj
    }
}
