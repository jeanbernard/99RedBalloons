//
//  ViewController.swift
//  99RedBallons
//
//  Created by Jean Bernard on 7/16/15.
//  Copyright (c) 2015 Jean Bernard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var ballonLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    
    var ballons:[Balloon] = []
    var currentIndex = 0
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createBalloonInstances()
        self.ballonLabel.text = "\(ballons[0].number) red ballons"
        self.myImageView.image = ballons[0].image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonItemPressed(sender: UIBarButtonItem) {
        
        currentIndex++
        
        /* Conditional to avoid going out of bounds of the array when it hits 99 balloons */
        
        if currentIndex == 99 {
            currentIndex = 0
        }
        
        self.ballonLabel.text = "\(ballons[currentIndex].number) red ballons"
        self.myImageView.image = ballons[currentIndex].image
        
    }
    
    func createBalloonInstances(){
        
        for var i = 1; i <= 99; i++ {
            let balloon = Balloon(number: i, image: addRandomImage())
            ballons.append(balloon)
        }
    }
    
    func addRandomImage() -> String {
        
        var randomNumber:Int
        
        do {
            randomNumber = Int(arc4random_uniform(UInt32(4)))
        } while self.imageNumber == randomNumber
        
        self.imageNumber = randomNumber
    
        var imageName:[String] = ["RedBalloon1.jpg", "RedBalloon2.jpg", "RedBalloon3.jpg", "RedBalloon4.jpg"]
        var ballonImage:String
        
        switch imageName[randomNumber] {
        case "RedBalloon1.jpg":
           ballonImage = "RedBalloon1.jpg"
        case "RedBalloon2.jpg":
            ballonImage = "RedBalloon2.jpg"
        case "RedBalloon3.jpg":
            ballonImage = "RedBalloon3.jpg"
        case "RedBalloon4.jpg":
            ballonImage = "RedBalloon4.jpg"
        default:
            ballonImage = ""
        }
        return ballonImage
    }

}

