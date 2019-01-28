//
//  UCMediatorSwiftExtensionSwiftTest.swift
//  UCRuntimeKit_Tests
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//  swift -> extension -> swift

import XCTest
import UCRuntimeKit

class UCMediatorSwiftExtensionSwiftTest: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

    //调用了无参无返回值函数
    func testNoArguNoResult() {
        
        UCMediator.sharedInstance().testExtensionNoArguNoResult { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
    
    //调用了无参有返回值函数
    func testNoArguReturnInt() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnInt { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Int, number == 1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUInt() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnUInt { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? UInt, number == 2 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnShort() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnCShort{ (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? CShort, number == 3 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUShort() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnUShort{ (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? ushort, number == 4 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnLong() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? CLong, number == 5 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnLongLong() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnLongLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? CLongLong, number == 6 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnULongLong() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnULongLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? CUnsignedLongLong, number == 7 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnFloat() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnFloat { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? Float, number == 0.1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnDouble() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnDouble { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? Double, number == 0.2 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnChar() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnChar { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? CChar, number == 65 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUChar() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnUChar { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? CUnsignedChar, number == 66 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnTrue() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnTrue { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? Bool, number == true else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnFalse() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnFalse { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? Bool, number == false else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnInteger() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnInteger { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? NSInteger, number == 1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnCGFloat() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnCGFloat { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? CGFloat, number == 0.2 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSString() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnNSString { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? NSString, number == "123" else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnString() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnString { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? String, number == "456" else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnAny() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnAny { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? String, number == "789" else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnIntArray() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnIntArray { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        let array = [1, 2, 3]
        guard let number = result as? [Int], number.hashValue == array.hashValue else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnStringArray() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnStringArray { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        let array = ["1", "2", "3"]
        guard let number = result as? [String], number.hashValue == array.hashValue else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSStringArray() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnNSStringArray { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        let array = ["4", "5", "6"]
        guard let number = result as? [String], number.hashValue == array.hashValue else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnDictionary() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnDictionary { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? [String: Int], number["key"] == 1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSDictionary() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnNSDictionary { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? NSDictionary, let value = number["key"] as? Int, value == 2 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSNumber() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnNSNumber { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? NSNumber, number.intValue == 1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testReturnSuccessBlock() {
        _ = UCMediator.sharedInstance().testExtensionNoArguReturnSuccessBlock { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
    
    func testReturnSelf() {
        let result = UCMediator.sharedInstance().testExtensionNoArguReturnSelf { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? UCMediatorArgument,
            let dict = number.arguDict
        else {
            XCTFail("返回值异常")
            return
        }
        
        print(dict)
        number.completionCallBack(["key": 890])
        let error = NSError(domain: "com.ucruntimekit.testSwiftExtension", code: 999, userInfo: nil)
        number.failureCallBack(error)
    }
}
