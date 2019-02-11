//
//  UCMediator+ObjcExtensionObjc.swift
//  UCRuntimeKit
//
//  Created by Link on 2019/1/31.
//  Copyright © 2019 Link. All rights reserved.
//

import UCRuntimeKit

@objc
extension UCMediator {
    
    func testObjcExtensionObjcNoResultNoArgument(invokeError: @escaping (Error) -> Void) {
        
        //swift -> extension -> Objc class名字不需要转换
        let className = "UCMeditorRuntimeMethodTestFile"
        _ = UCMediator.sharedInstance().nativePerformTarget(className, action: "noResultNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
    }
    
    func testObjcExtensionObjcNoResultOneArgument(invokeError: @escaping (Error) -> Void) {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let dict = ["funcName": "testSwiftExtensionObjcNoResultOneArgument"]
        _ = UCMediator.sharedInstance().nativePerformTarget(className, action: "noResultOneArguMethod:", params: dict, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
    }
    
    func testObjcExtensionObjcNoArguReturnInt(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnIntNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnUInt(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUIntNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnShort(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnShortNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnUShort(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUShortNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnLongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnULong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnULongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnLongLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnLongLongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnULongLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnULongLongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnFloat(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnFloatNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnDouble(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnDoubleNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnChar(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnCharNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnUChar(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUCharNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnTrue(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnYesNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnFalse(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNoNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnCGFloat(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnCGFloatNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnNSString(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnStringNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnID(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnIDNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnArray(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnArrayNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnNSDictionary(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnDictNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnNSNumber(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNumberNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testObjcExtensionObjcNoArguReturnBlock(invokeError: @escaping (Error) -> Void) -> Any? {
        
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
