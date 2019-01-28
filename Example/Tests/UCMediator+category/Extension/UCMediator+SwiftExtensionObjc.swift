//
//  UCMediator+SwiftExtensionObjc.swift
//  UCRuntimeKit
//
//  Created by Link on 2019/1/28.
//  Copyright © 2019 Link. All rights reserved.
//

import UCRuntimeKit

extension UCMediator {
    
    func testSwiftExtensionObjcNoResultNoArgument(invokeError: @escaping (Error) -> Void) {

        //swift -> extension -> Objc class名字不需要转换
        let className = "UCMeditorRuntimeMethodTestFile"
        _ = UCMediator.sharedInstance().nativePerformTarget(className, action: "noResultNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
    }
    
    func testSwiftExtensionObjcNoResultOneArgument(invokeError: @escaping (Error) -> Void) {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let dict = ["funcName": "testSwiftExtensionObjcNoResultOneArgument"]
        _ = UCMediator.sharedInstance().nativePerformTarget(className, action: "noResultOneArguMethod:", params: dict, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
    }
    
    func testSwiftExtensionObjcNoArguReturnInt(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnIntNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnUInt(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUIntNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnShort(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnShortNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnUShort(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUShortNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnLongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnULong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnULongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnLongLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnLongLongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnULongLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnULongLongNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnFloat(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnFloatNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnDouble(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnDoubleNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnChar(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnCharNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnUChar(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUCharNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnTrue(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnYesNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnFalse(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNoNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnCGFloat(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnCGFloatNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnNSString(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnStringNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnID(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnIDNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnArray(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnArrayNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnNSDictionary(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnDictNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnNSNumber(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = "UCMeditorRuntimeMethodTestFile"
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNumberNoArgumentMethod", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testSwiftExtensionObjcNoArguReturnBlock(invokeError: @escaping (Error) -> Void) -> Any? {
        
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

