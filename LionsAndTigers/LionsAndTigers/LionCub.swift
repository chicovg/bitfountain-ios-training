//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Victor Guthrie on 4/26/15.
//  Copyright (c) 2015 chicovg. All rights reserved.
//

import Foundation

class LionCub: Lion {
    
    func rubLionCubsBelly() {
        println("LionCub: Snuggle and be happy")
    }
    
    override func roar() {
        super.roar()
        println("LionCub: Growl Growl")
    }
    
    override func randomFact() -> String {
        var randomFactString:String
        if isAlphaMale {
            randomFactString = "Cubs are usually hidden in the dense bush for approximately six weeks."
        } else {
            randomFactString = "Cubs begin eating meat at about the age of six weeks"
        }
        return randomFactString
    }
}
