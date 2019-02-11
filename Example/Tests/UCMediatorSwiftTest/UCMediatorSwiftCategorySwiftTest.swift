//
//  UCMediatorSwiftCategorySwiftTest.swift
//  UCRuntimeKit_Tests
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//

import XCTest
import UCRuntimeKit


class UCMediatorSwiftCategorySwiftTest: XCTestCase {

    func testNoArguNoReturn() {
        _ = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguNoReturn { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
    
    func testNoArguReturnInt() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnInt { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Int, number == 1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUInt() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnUInt { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? uint, number == 2 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnShort() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnShort { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CShort, number == 3 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUShort() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnUShort { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedShort, number == 4 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnLong() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CLong, number == 5 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnLongLong() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnLongLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CLongLong, number == 6 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnULongLong() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnULongLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedLongLong, number == 7 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnFloat() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnFloat { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Float, number == 0.1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnDouble() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnDouble { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Double, number == 0.2 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnChar() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnChar { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? char16_t, number == 65 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUChar() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnUChar { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedChar, number == 66 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnTrue() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnTrue { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Bool, number == true else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnFalse() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnFalse { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Bool, number == false else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnInteger() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnInteger { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Int, number == 1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnCGFloat() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnCGFloat { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CGFloat, number == 0.2 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSString() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnNSString { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? NSString, number == "123" else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnString() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnString { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? String, number == "456" else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnAny() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnAny { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? String, number == "789" else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnArray() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnArray { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? [Int], number == [1, 2, 3] else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnStringArray() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnStringArray { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? [String], number == ["1", "2", "3"] else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSStringArray() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnNSStringArray { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? [NSString], number == ["4", "5", "6"] else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnDictionary() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnDictionary { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? [String: Int], number == ["key": 1] else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSDictionary() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnNSDictionary { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? [String: Int], number == ["key": 2] else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSNumber() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftNoArguReturnNSNumber { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? NSNumber, number == NSNumber(integerLiteral: 1) else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testSuccessBlock() {
        
        UCMediator.sharedInstance().testSwiftCategorySwiftSuccessBlock { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
    
    func testReturnArgu() {
        
        let result = UCMediator.sharedInstance().testSwiftCategorySwiftReturnSelf { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? UCMediatorArgument, let dict = number.arguDict as? [String: String], dict == ["key1": "1"] else {
            XCTFail("返回值异常")
            return
        }
    }
}
