//
//  ViewController.swift
//  Cold Call v.2
//
//  Created by Stacey Abbott on 11/4/17.
//  Copyright © 2017 Stacey Abbott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //outlets
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    let people = ["Will", "Grace", "Jack", "Karen"]
    
    //actions
    @IBAction func changeName(_ sender: UIButton) {
        
        let number = Int(arc4random_uniform(5) + 1)
        let show_number = String(number)
        numberLabel.text = show_number
        
        if number <= 2{
            numberLabel.textColor = UIColor.red
        }else if number == 5{
            numberLabel.textColor = UIColor.green
        }else {
            numberLabel.textColor = UIColor.orange
        }
        
        let personNumber = Int(arc4random_uniform(UInt32(people.count)))
        nameLabel.text = people[personNumber]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

  
    
}

