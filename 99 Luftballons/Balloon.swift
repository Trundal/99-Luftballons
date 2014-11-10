//
//  Balloon.swift
//  99 Luftballons
//
//  Created by Sigyn on 10/11/14.
//  Copyright (c) 2014 Vagabond Dream. All rights reserved.
//

import Foundation
import UIKit

struct Balloon {
    
    var number = 0
    var imageNumber = UIImage(named: "BerlinTVTower.jpg")
    
    func setBalloonNumber () -> UIImage {
        
        var myBalloonImage = UIImage(named: "")
        
        switch Int(arc4random_uniform(UInt32(4))) {
        case 0:
            myBalloonImage = UIImage(named: "RedBalloon1.jpg")
        case 1:
            myBalloonImage = UIImage(named: "RedBalloon2.jpg")
        case 2:
            myBalloonImage = UIImage(named: "RedBalloon3.jpg")
        case 3:
            myBalloonImage = UIImage(named: "RedBalloon4.jpg")
        default:
            myBalloonImage = UIImage(named: "BerlinTVTower.jpg")
        }
        return myBalloonImage!
    }
    
}


