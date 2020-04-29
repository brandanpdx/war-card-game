//
//  ViewController.swift
//  WarCardGame
//
//  Created by Brandan Sayarath on 4/28/20.
//  Copyright © 2020 Brandan Sayarath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func dealTapped(_ sender: Any) {
        
        let leftNumber = Int.random(in: 2...14);
        print(leftNumber);
        
        let rightNumber = Int.random(in: 2...14);
        print(rightNumber);
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if (leftNumber > rightNumber) {
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
            
        } else if (leftNumber < rightNumber) {
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
            
        }
        
        if (leftScore == 5 || rightScore == 5) {
            print("works")
        }
    }
    
}

