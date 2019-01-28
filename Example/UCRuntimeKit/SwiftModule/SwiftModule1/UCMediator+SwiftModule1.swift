//
//  UCMediator+SwiftModule1.swift
//  UCRuntimeKit
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//

import UCRuntimeKit

extension UCMediator {
    
    func getSwiftModule2Controller(params: [String: Any]) -> UIViewController {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        guard let vc2 = UCMediator.sharedInstance().nativePerformTarget(className,
                                                                        action: "getController:",
                                                                        params: params,
                                                                        completion: nil,
                                                                        failure: nil) as? UIViewController else {return UIViewController()}
        return vc2
    }
    
    func testExtensionNoArguNoResult(invokeError: @escaping (Error) -> Void) {
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        UCMediator.sharedInstance().nativePerformTarget(className, action: "noReturnNoParameter", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
    }
    
    func testExtensionNoArguReturnInt(invokeError: @escaping (Error) -> Void) -> Any? {
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnInt", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnUInt(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUInt", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnCShort(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnShort", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnUShort(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUShort", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnLong", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnLongLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnLongLong", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnULongLong(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnULongLong", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnFloat(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnFloat", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }

    func testExtensionNoArguReturnDouble(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnDouble", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnChar(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnChar", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnUChar(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnUChar", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnTrue(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnTrue", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnFalse(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnFalse", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnInteger(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnInteger", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }

    func testExtensionNoArguReturnCGFloat(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnCGFloat", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnNSString(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNSString", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnString(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnString", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnAny(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnAny", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnIntArray(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnIntArray", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnStringArray(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnStringArray", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnNSStringArray(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNSStringArray", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnDictionary(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnDictionary", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnNSDictionary(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNSDictionary", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnNSNumber(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnNSNumber", params: nil, completion: nil, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }

    func testExtensionNoArguReturnSuccessBlock(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        
        let block: (([AnyHashable: Any]?) -> Void) = {(dict) in
            print("🍎🍎🍎🍎🍎🍎🍎🍎🍎\(dict ?? [:])")
        }
        
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnSuccessBlock:", params: nil, completion: block, failure: nil) { (error) in
            invokeError(error)
        }
        return result
    }
    
    func testExtensionNoArguReturnSelf(invokeError: @escaping (Error) -> Void) -> Any? {
        
        let className = UCMediatorParameterParser.getObjcClassName("UCSwiftModuleTarget2")
        
        let dict = ["key": 4321]
        
        let result = UCMediator.sharedInstance().nativePerformTarget(className, action: "returnSelf:", params: dict, completion: { (dict) in
            print("🍎🍎🍎🍎🍎🍎🍎🍎🍎\(dict)")
        }, failure: { (error) in
            print(("error:🍎🍎🍎🍎🍎🍎🍎🍎🍎\(error)"))
        }) { (error) in
            invokeError(error)
        }
        return result
    }
}
