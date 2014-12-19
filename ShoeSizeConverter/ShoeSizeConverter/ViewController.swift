//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Victor Guthrie on 12/10/14.
//  Copyright (c) 2014 chicovg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        if(mensShoeSizeTextField.hasText()){
            let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
            
            let conversionConstant = 30
            mensConvertedShoeSizeLabel.hidden = false
            mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) in European Shoe Size"
        }
    }

    @IBAction func womansConvertButtonPressed(sender: UIButton) {
        if(womensShoeSizeTextField.hasText()){
            let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
            let conversionConstant = 30.5
            womensConvertedShoeSizeLabel.hidden = false
            womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant) in European Shoe Size"
        }
    }
}

