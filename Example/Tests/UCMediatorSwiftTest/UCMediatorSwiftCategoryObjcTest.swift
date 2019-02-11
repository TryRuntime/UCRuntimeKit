//
//  UCMediatorSwiftCategoryObjcTest.swift
//  UCRuntimeKit_Tests
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//

import XCTest

class UCMediatorSwiftCategoryObjcTest: XCTestCase {

    func testNoArguNoReturn() {
        UCMediator.sharedInstance().testSwiftCategoryObjcNoArguNoReturn { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
    
    func testOneArguNoReturn() {
        UCMediator.sharedInstance().testSwiftCategoryObjcOneArguNoReturn { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
    
    func testNoArguReturnInt() {

        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnInt { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }

        guard let number = result as? Int, number == 10 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUInt() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnUInt { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? uint, number == 14 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnShort() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnShort { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CShort, number == 11 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUShort() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnUShort { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedShort, number == 12 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnLong() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CLong, number == 12 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnULong() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnULong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedLong, number == 17 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnLongLong() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnLongLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CLongLong, number == 16 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnULongLong() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnULongLong { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedLongLong, number == 15 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnFloat() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnFloat { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Float, number == 0.1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnDouble() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnDouble { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        //精度j丢失
        guard let number = result as? Double, fabs(number - 0.1) < 0.000001 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnChar() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnChar { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? char16_t, number == 97 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUChar() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnUChar { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CUnsignedChar, number == 98 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnTrue() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnTrue { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Bool, number == true else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnFalse() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnFalse { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Bool, number == false else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnInteger() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnInteger { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? Int, number == 1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnUInteger() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnUInteger { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? uint, number == 3 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnCGFloat() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnCGFloat { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? CGFloat, number == 0.1 else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSString() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnNSString { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? NSString, number == "a" else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnIntArray() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnIntArray { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? [Int], number == [1, 2, 3] else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSDictionary() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnNSDictionary { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? [String: String], number == ["key1": "value"] else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testNoArguReturnNSNumber() {
        
        let result = UCMediator.sharedInstance().testSwiftCategoryObjcNoArguReturnNSNumber { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
        
        guard let number = result as? NSNumber, number == NSNumber(integerLiteral: 1) else {
            XCTFail("返回值异常")
            return
        }
    }
    
    func testBlock() {
        
        UCMediator.sharedInstance().testSwiftCategoryObjcBlock { (error) in
            XCTAssertNil(error, "error code = \(error._code)")
        }
    }
}
