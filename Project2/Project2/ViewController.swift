//
//  ViewController.swift
//  Project2
//
//  Created by Jeffrey Eng on 7/5/16.
//  Copyright © 2016 Jeffrey Eng. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {
    @IBOutlet weak var button1: UIButton!

    @IBOutlet weak var button2: UIButton!
    
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var correctAnswer = 0 //Stores whether flag 0, 1, or 2 holds correct answer
    var score = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
  
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "poland", "russia", "spain", "uk", "us"]
        
        func askQuestion() {
            countries = GKRandomSource.sharedRandom().arrayByShufflingObjectsInArray(countries) as! [String]
            button1.setImage(UIImage(named: countries[0]), forState: .Normal)
            button2.setImage(UIImage(named: countries[1]), forState: .Normal)
            button3.setImage(UIImage(named: countries[2]), forState: .Normal)
            correctAnswer = GKRandomSource.sharedRandom().nextIntWithUpperBound(3)
            title = countries[correctAnswer].uppercaseString
        }
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGrayColor().CGColor
        button2.layer.borderColor = UIColor.lightGrayColor().CGColor
        button3.layer.borderColor = UIColor.lightGrayColor().CGColor
        
        askQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

