//
//  ViewController.swift
//  Dice App
//
//  Created by Matt Henley on 6/18/19.
//  Copyright © 2019 Matt Henley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDicImages()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        updateDicImages()
    }
    
    // added motion detection
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDicImages()
    }
    
    // function for random dice images
    func updateDicImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        print(randomDiceIndex1)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
}

