//
//  ViewController.swift
//  Roll'em
//
//  Created by Jason Behnke on 5/21/17.
//  Copyright © 2017 Jason Behnke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // constant dice dictionary
    let diceArray : [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    // init view
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // random init view
        changeDiceFace()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Roll Button Methods

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Log activity
        // Print to console
        print("Button pressed, returned new dice.")
        // init random new numbers
        changeDiceFace()
    }
    
    func changeDiceFace() {
        
        let firstRandomIndex = Int(arc4random_uniform(6))
        let secondRandomIndex = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[firstRandomIndex])
        diceImageView2.image = UIImage(named: diceArray[secondRandomIndex])
        
    }
    //MARK: -Shake gesture handling
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        // Log activity
        // Print to console
        print("Device shaken, returned new dice.")
        changeDiceFace()
       
    }

}


