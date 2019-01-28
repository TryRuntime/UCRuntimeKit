//
//  UCMediatorParameterParser.swift
//  UCRuntimeKit
//
//  Created by Link913 on 2019/1/14.
//

import UIKit

public class UCMediatorParameterParser: NSObject {

    //获取swift类在objc中的名称
    public class func getObjcClassName(_ swiftClassNameStr: String) -> String {
        guard let prefix = Bundle.main.infoDictionary?["CFBundleExecutable"] as? String else {return ""}
        let className = prefix + "." + swiftClassNameStr
        return className
    }
}
