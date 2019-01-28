//
//  UCMediatorSwiftExtensionObjcTest.swift
//  UCRuntimeKit_Tests
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//

import XCTest
import UCRuntimeKit

class UCMediatorSwiftExtensionObjcTest: XCTestCase {

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

    func testNoArguNoReturn() {
        _ = UCMediator.sharedInstance().testSwiftExtensionObjcNoResultNoArgument { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
    
    func testOneArguNoReturn() {
        _ = UCMediator.sharedInstance().testSwiftExtensionObjcNoResultOneArgument { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
    
    func testNoArguReturnInt() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnInt { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Int, number == 10 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUInt() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnUInt { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedInt, number == 14 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnShort() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnShort { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CShort, number == 11 else {
            XCTFail("返回值异常")
            return
        }
    }

    func testNoArguReturnUShort() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnUShort { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedShort, number == 12 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnLong() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CLong, number == 12 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnULong() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnULong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedLong, number == 17 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnLongLong() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnLongLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CLongLong, number == 16 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnULongLong() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnULongLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedLongLong, number == 15 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnFloat() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnFloat { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Float, number == 0.1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnDouble() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnDouble { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        //double会比较异常,这里只能判断绝对值了
        guard let number = result as? Double, abs(number - 0.1) < 0.000001 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnChar() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnChar { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? char16_t, number == 97 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUChar() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnUChar { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedChar, number == 98 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnTrue() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnTrue { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Bool, number == true else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnFalse() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnFalse { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Bool, number == false else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnCGFloat() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnCGFloat { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CGFloat, number == 0.1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSString() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnNSString { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? NSString, number == "a" else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnID() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnID { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? NSString, number == "返回值id" else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnArray() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnArray { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        let array = [1, 2, 3]
        guard let number = result as? [Int], number.hashValue == array.hashValue else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSDictionary() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnNSDictionary { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        let dict = ["key1": "value"]
        guard let number = result as? [String: String], number.hashValue == dict.hashValue else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSNumber() {
        let result = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnNSNumber { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        guard let number = result as? NSNumber, number.intValue == 1 else {
            XCTFail("返回值异常")
            return
        }
    }

    func testNoArguNoReturnBlock() {
        _ = UCMediator.sharedInstance().testSwiftExtensionObjcNoArguReturnBlock { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
}
