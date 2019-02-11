//
//  UCSwiftModuleTarget1.swift
//  UCRuntimeKit
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//

import UIKit
import UCRuntimeKit

class UCSwiftModuleTarget1: NSObject {
    @objc
    func UCSwiftModuleTarget1_test(_ paramsObj: UCMediatorArgument) -> [AnyHashable: Any] {
    
        return paramsObj.arguDict ?? [:]
    }
}
