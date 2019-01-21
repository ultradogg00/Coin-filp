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
    
  var fliped = ["Head", "Talis"]
    var randomNumber : Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func buttonToFlip(_ sender: UIButton) {
         let num = Int(arc4random_uniform(2))

        randomNumber = num
        
        headOrTails.text = fliped[num]
        
        print(randomNumber)
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

