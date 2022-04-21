//
//  ViewController.swift
//  LifeCounter
//
//  Created by 袁月 on 2022/4/19.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var p1_lifeCountLabel: UILabel!
    @IBOutlet weak var p1_minus1: UIButton!
    @IBOutlet weak var p1_minus5: UIButton!
    @IBOutlet weak var p1_plus1: UIButton!
    @IBOutlet weak var p1_plus5: UIButton!
    
    @IBOutlet weak var p2_lifeCountLabel: UILabel!
    @IBOutlet weak var p2_minus1: UIButton!
    @IBOutlet weak var p2_minus5: UIButton!
    @IBOutlet weak var p2_plus1: UIButton!
    @IBOutlet weak var p2_plus5: UIButton!
    
    var p1_lifeCount = 20
    var p2_lifeCount = 20
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        p1_lifeCountLabel.text = "\(p1_lifeCount)"
        p2_lifeCountLabel.text = "\(p2_lifeCount)"
        
        if p1_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 1 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
        
        if p2_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 2 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
    }
    
    @IBAction func p1_minus1ButtonDidTouchUpInside(_ sender: Any) {
        p1_lifeCount -= 1
        p1_lifeCountLabel.text = "\(p1_lifeCount)"
        
        if p1_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 1 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
    }
    
    @IBAction func p1_minus5ButtonDidTouchUpInside(_ sender: Any) {
        p1_lifeCount -= 5
        p1_lifeCountLabel.text = "\(p1_lifeCount)"
        
        if p1_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 1 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
    }
    
    @IBAction func p1_plus1ButtonDidTouchUpInside(_ sender: Any) {
        p1_lifeCount += 1
        p1_lifeCountLabel.text = "\(p1_lifeCount)"
        
        if p1_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 1 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
    }
    
    @IBAction func p1_plus5ButtonDidTouchUpInside(_ sender: Any) {
        p1_lifeCount += 5
        p1_lifeCountLabel.text = "\(p1_lifeCount)"
        
        if p1_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 1 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
    }
    
    @IBAction func p2_minus1ButtonDidTouchUpInside(_ sender: Any) {
        p2_lifeCount -= 1
        p2_lifeCountLabel.text = "\(p2_lifeCount)"
        
        if p2_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 2 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
    }
    
    @IBAction func p2_minus5ButtonDidTouchUpInside(_ sender: Any) {
        p2_lifeCount -= 5
        p2_lifeCountLabel.text = "\(p2_lifeCount)"
        
        if p2_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 2 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
    }
    
    @IBAction func p2_plus1ButtonDidTouchUpInside(_ sender: Any) {
        p2_lifeCount += 1
        p2_lifeCountLabel.text = "\(p2_lifeCount)"
        
        if p2_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 2 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
    }
    
    @IBAction func p2_plus5ButtonDidTouchUpInside(_ sender: Any) {
        p2_lifeCount += 5
        p2_lifeCountLabel.text = "\(p2_lifeCount)"
        
        if p2_lifeCount < 1 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 2 LOSES!"
        } else {
            resultLabel.isHidden = true
        }
    }
}

