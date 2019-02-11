//
//  ObjcExtensionSwift.swift
//  UCRuntimeKit_Example
//
//  Created by Link on 2019/2/3.
//  Copyright © 2019 Link. All rights reserved.
//

import UCRuntimeKit

@objc
extension UCMediator {
    func testObjcExtensionSwiftNoResultNoArgument(invokeError: @escaping (Error) -> Void) {
        
        //swift -> extension -> Objc class名字不需要转换
        let className = "UCMeditorRuntimeMethodTestFile"
        _ = UCMediator.sharedInstance().nativePerformTarget(className, action: "noResultNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
    }
    
    func testObjcExtensionSwiftNoResultOneArgument(invokeError: @escaping (Error) -> Void) {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let dict = ["funcName": "testSwiftExtensionObjcNoResultOneArgument"]
        _ = UCMediator.sharedInstance().nativePerformTarget(className, action: "noResultOneArguMethod:", params: dict, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
    }
    
    func testObjcExtensionSwiftNoArguReturnInt(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnIntNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnUInt(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUIntNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnShort(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnShortNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnUShort(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUShortNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnLongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnULong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnULongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnLongLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnLongLongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnULongLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnULongLongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnFloat(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnFloatNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnDouble(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnDoubleNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnChar(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnCharNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnUChar(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUCharNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnTrue(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnYesNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnFalse(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNoNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnCGFloat(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnCGFloatNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnNSString(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnStringNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnID(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnIDNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnArray(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnArrayNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnNSDictionary(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnDictNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnNSNumber(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNumberNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionSwiftNoArguReturnBlock(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "haveArgumentblockTest:", params: nil, completion: { (dict) in
            print("🍎🍎🍎🍎🍎🍎🍎🍎🍎=\(dict)")
        }, failure: { (error) in
            print("🍎🍎🍎🍎🍎🍎🍎🍎🍎=\(error)")
        }) { (error) in
            invokeError(error)
        }
        
        return result
    }
}
