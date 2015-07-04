//
//  CreateAccountViewController.swift
//  LoginProject
//
//  Created by Victor Guthrie on 7/3/15.
//  Copyright (c) 2015 chicovg. All rights reserved.
//

import UIKit

protocol CreateAccountViewControllerDelegate {
    func accountCreated ()
}

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var chooseUsernameField: UITextField!
    @IBOutlet weak var choosePasswordField: UITextField!
    @IBOutlet weak var confirmPasswordField: UITextField!
    
    var delegate: CreateAccountViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccountButton(sender: UIButton) {
        if choosePasswordField.text == confirmPasswordField.text &&
            choosePasswordField.text != nil {
                
                NSUserDefaults.standardUserDefaults().setObject(self.chooseUsernameField.text, forKey: kUserNameKey)
                NSUserDefaults.standardUserDefaults().setObject(self.choosePasswordField.text, forKey: kPasswordKey)
                NSUserDefaults.standardUserDefaults().synchronize()
                
                self.dismissViewControllerAnimated(true, completion: nil)
                delegate?.accountCreated()
        }
        
    }

    @IBAction func cancelButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
