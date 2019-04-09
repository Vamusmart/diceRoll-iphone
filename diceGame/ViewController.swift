//
//  ViewController.swift
//  diceGame
//
//  Created by Valentino on 09/04/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage: UIImageView!
    @IBOutlet weak var totalScore: UILabel!
    @IBOutlet weak var message: UILabel!
    
    var allDice = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    var randomDiceIndex: Int = 0
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButton(_ sender: Any) {
        
        message.text = " "
        randomDiceIndex = Int.random(in: 0 ... 5)
        diceImage.image = allDice[randomDiceIndex]
        score += randomDiceIndex + 1
        totalScore.text = "\(score)"
        rollLogic()
    }
    
    func rollLogic(){
        if(randomDiceIndex == 0){
            message.text = "You Lose :'("
            score = 0
            totalScore.text = "\(score)"

        } else if (score >= 20){
            message.text = "You Won : )"
            score = 0
            totalScore.text = "\(score)"
        } else {
            return
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        message.text = " "
        randomDiceIndex = Int.random(in: 0 ... 5)
        diceImage.image = allDice[randomDiceIndex]
        score += randomDiceIndex + 1
        totalScore.text = "\(score)"
        rollLogic()
    }
    
    @IBAction func resetButton(_ sender: Any) {
        score = 0
        totalScore.text = "\(score)"
        message.text = " "
    }
}

