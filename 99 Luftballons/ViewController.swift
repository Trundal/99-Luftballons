//
//  ViewController.swift
//  99 Luftballons
//
//  Created by Sigyn on 10/11/14.
//  Copyright (c) 2014 Vagabond Dream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myBalloonImage: UIImageView!
    @IBOutlet weak var myBalloonNumberLabel: UILabel!
    
    var myBalloons:[Balloon] = []
    
    let numBalloons = 100
    var currentIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myBalloon = Balloon()
        self.myBalloons.removeAll(keepCapacity: true)
        
        for var balloonNumber = 1; balloonNumber <= self.numBalloons; balloonNumber++ {
            myBalloon.number = balloonNumber
            myBalloon.imageNumber = myBalloon.setBalloonNumber()
            self.myBalloons.append(myBalloon)
            println("Balloon #\(self.myBalloons[balloonNumber-1].number) is linked to image number \(self.myBalloons[balloonNumber-1].imageNumber).") // Debug code
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func newBalloonButtonPressed(sender: UIBarButtonItem) {
 
        var randomIndex = 0
        
        do {
            randomIndex = Int(arc4random_uniform(UInt32(self.myBalloons.count)))
            println("randomIndex is \(randomIndex)") // Debug code
        } while self.myBalloons[self.currentIndex].imageNumber == self.myBalloons[randomIndex].imageNumber
        
        self.currentIndex = randomIndex
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
            self.myBalloonImage.image = self.myBalloons[self.currentIndex].imageNumber
            self.myBalloonNumberLabel.text = "Balloon #\(self.myBalloons[self.currentIndex].number)"
       
            }, completion: {
                (finished: Bool) -> () in
        })
        
    }

}


