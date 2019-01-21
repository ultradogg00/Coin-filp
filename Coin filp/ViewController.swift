//
//  ViewController.swift
//  Coin filp
//
//  Created by David Ashieze on 2019-01-17.
//  Copyright © 2019 David Ashieze. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headOrTails: UILabel!
    @IBOutlet weak var score1: UILabel!
    @IBOutlet weak var score2: UILabel!
    
    
  var fliped = ["Head", "Talis"]
    var randomNumber : Int = 1
    var headScore : Int = 0
    var tailScore : Int = 0
    var num = Int(arc4random_uniform(2))
    
    
    func scoreChange() {
        
        print(num)
        
        if num == 0 {
            headScore += 1
            score1.text = "\(headScore)"
            
            
        }else if num == 1 {
            tailScore += 1
            score2.text = "\(tailScore)"
            
        }
        
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    @IBAction func buttonToFlip(_ sender: UIButton) {
        num = Int(arc4random_uniform(2))

        randomNumber = num
        
        headOrTails.text = fliped[num]
        
        //print(randomNumber)
       
        scoreChange()
    
    }

    
        
    
    
    @IBAction func RestButton(_ sender: UIButton) {
        headScore = 0
        score1.text = "0"
        
        tailScore = 0
        score2.text = "0"
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    




}
