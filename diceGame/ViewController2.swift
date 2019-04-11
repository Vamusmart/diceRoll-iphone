//
//  ViewController2.swift
//  diceGame
//
//  Created by Administrator on 10/04/2019.
//  Copyright © 2019 Code Nation. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var diceMulti: UIImageView!
    @IBOutlet weak var totalMulti: UILabel!
    @IBOutlet weak var messagemulti: UILabel!
    
    @IBOutlet weak var diceMulti2: UIImageView!
    @IBOutlet weak var totalMulti2: UILabel!
    
    
    var allDiceMulti = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    var randomDiceIndexMulti: Int = 0
    var scoreMulti: Int = 0
    
    var scoreMulti2: Int = 0
    var turn = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
 
    @IBAction func roll1(_ sender: Any) {
        messagemulti.text = " "
        randomDiceIndexMulti = Int.random(in: 0 ... 5)
        diceMulti.image = allDiceMulti[randomDiceIndexMulti]
        scoreMulti += randomDiceIndexMulti + 1
        totalMulti.text = "\(scoreMulti)"
        rollLogicMulti()
//    print("hello")
    }
    
    @IBAction func roll2(_ sender: Any) {
        messagemulti.text = " "
        randomDiceIndexMulti = Int.random(in: 0 ... 5)
        diceMulti2.image = allDiceMulti[randomDiceIndexMulti]
        scoreMulti2 += randomDiceIndexMulti + 1
        totalMulti2.text = "\(scoreMulti2)"
        rollLogicMulti2()
//        print("hello2")
    }
    
    
    
    func rollLogicMulti(){
        if(randomDiceIndexMulti == 0){
            messagemulti.text = "Player1 Lose :'("
            scoreMulti = 0
            totalMulti.text = "\(scoreMulti)"
        } else if (scoreMulti >= 20){
            messagemulti.text = "Player1 Won : )"
            scoreMulti = 0
            totalMulti.text = "\(scoreMulti)"
        } else {
            return
        }
    }
    
    func rollLogicMulti2(){
        if(randomDiceIndexMulti == 0){
            messagemulti.text = "Player2 Lose :'("
            scoreMulti2 = 0
            totalMulti2.text = "\(scoreMulti2)"
            
        } else if (scoreMulti2 >= 20){
            messagemulti.text = "Player2 Won : )"
            scoreMulti2 = 0
            totalMulti2.text = "\(scoreMulti2)"
        } else {
            return
        }
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if (turn == 0) {
        messagemulti.text = " "
        randomDiceIndexMulti = Int.random(in: 0 ... 5)
        diceMulti.image = allDiceMulti[randomDiceIndexMulti]
        scoreMulti += randomDiceIndexMulti + 1
        totalMulti.text = "\(scoreMulti)"
        rollLogicMulti()
        turn = 1
        }
        else
        {
        messagemulti.text = " "
        randomDiceIndexMulti = Int.random(in: 0 ... 5)
        diceMulti2.image = allDiceMulti[randomDiceIndexMulti]
        scoreMulti2 += randomDiceIndexMulti + 1
        totalMulti2.text = "\(scoreMulti2)"
        rollLogicMulti2()
        turn = 0
        }
    }
    
    
    @IBAction func resetGame(_ sender: Any) {
                scoreMulti = 0
                scoreMulti2 = 0
                totalMulti.text = "\(scoreMulti)"
                totalMulti2.text = "\(scoreMulti2)"
                messagemulti.text = " "
    }
}

