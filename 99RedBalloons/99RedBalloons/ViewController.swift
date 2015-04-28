//
//  ViewController.swift
//  99RedBalloons
//
//  Created by Victor Guthrie on 4/18/15.
//  Copyright (c) 2015 chicovg. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var balloonLabel: UILabel!
    @IBOutlet weak var balloonImage: UIImageView!
    
    var currentBallon:Int = 0
    var ballons:[Balloon] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        createBalloons()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func createBalloons(){
        for n in 1...99 {
            var balloon = Balloon()
            balloon.number = n
            balloon.image = randomImage()
            
            ballons.append(balloon)
        }
    }
    
    func setBalloon() {
        var balloonToSet = ballons[currentBallon];
        balloonLabel.text = "\(balloonToSet.number) balloon"
        balloonImage.image = balloonToSet.image
    }
    
    func randomImage() -> UIImage {
        let index = Int(arc4random_uniform(UInt32(4)));
        var imageName: String
        
        switch index {
            case 0 : imageName = "RedBalloon1.jpg"
            case 1 : imageName = "RedBalloon2.jpg"
            case 2 : imageName = "RedBalloon3.jpg"
            default : imageName = "RedBalloon4.jpg"
        }
        return UIImage(named: imageName)!
    }

    @IBAction func nextButtonPressed(sender: AnyObject) {
        setBalloon()
        currentBallon = (currentBallon + 1) % 99;
    }

}

