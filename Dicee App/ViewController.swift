//
//  ViewController.swift
//  Dicee App
//
//  Created by Rafael Santiago on 23/09/2018.
//  Copyright © 2018 Rafael Santiago. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var imgViewDie1: UIImageView!
    @IBOutlet weak var imgViewDie2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        rollDice()
    }

    @IBAction func rollDiceAction(_ sender: Any) {
        rollDice()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        
        rollDice()
    }
    
    func rollDice(){
        randomDiceIndex1 = Int.random(in: 1 ... 5)
        randomDiceIndex2 = Int.random(in: 1 ... 5)
        
        imgViewDie1.image = UIImage(named: "dice" + String(randomDiceIndex1))
        imgViewDie2.image = UIImage(named: "dice" + String(randomDiceIndex2))
    }
    
}

