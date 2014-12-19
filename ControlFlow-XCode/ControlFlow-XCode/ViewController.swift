//
//  ViewController.swift
//  ControlFlow-XCode
//
//  Created by Victor Guthrie on 12/13/14.
//  Copyright (c) 2014 chicovg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let truckSpeed = 45
        let lamboSpeed = 120
        var mySpeed:Int
        mySpeed = 80
        
        if mySpeed < 70 {
            println("Keep Cruising")
        } else {
            println("Slow down police ahead")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

