//
//  UCSwiftModule1ViewController.swift
//  UCRuntimeKit
//
//  Created by Link913 on 2019/1/14.
//  Copyright © 2019 Link. All rights reserved.
//

import UIKit
import UCRuntimeKit

class UCSwiftModule1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = "SWIFTVC1"
        self.view.backgroundColor = .red
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let vc = UCMediator.sharedInstance().getSwiftModule2Controller(params: ["haha": 123])
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

