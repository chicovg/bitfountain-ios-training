//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Victor Guthrie on 12/13/14.
//  Copyright (c) 2014 chicovg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageHumanYearsLabel: UILabel!
    @IBOutlet weak var ageDogYearsLabel: UILabel!
    @IBOutlet weak var ageHumanYearsTextField: UITextField!
    
    let humanToDogYearsUnderTwo = 10.5;
    let humanToDogYearsOverTwo = 4.0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitAge(sender: UIButton) {
        if(ageHumanYearsTextField.hasText()){
            var enteredAge = Double((ageHumanYearsTextField.text as NSString).doubleValue)
            ageHumanYearsLabel.text = "Human years: \(enteredAge)"
            if(enteredAge <= 2.0){
                ageDogYearsLabel.text = "Dog years: \(enteredAge * humanToDogYearsUnderTwo)"
            }else{
                ageDogYearsLabel.text = "Dog years: \((2.0 * humanToDogYearsUnderTwo) + ((enteredAge - 2.0) * humanToDogYearsOverTwo))"
            }
            
            ageHumanYearsTextField.resignFirstResponder()
        }
        
    }

}

