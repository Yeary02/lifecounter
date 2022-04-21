//
//  ViewController.swift
//  LifeCounter
//
//  Created by 袁月 on 2022/4/19.
//

import UIKit

class ViewController: UIViewController {
    // player 1
    @IBOutlet weak var p1_lifeCountLabel: UILabel!
    @IBOutlet weak var p1_minus1: UIButton!
    @IBOutlet weak var p1_minus5: UIButton!
    @IBOutlet weak var p1_plus1: UIButton!
    @IBOutlet weak var p1_plus5: UIButton!
    
    var p1_lifeCount = 20
    
    // player 2
    @IBOutlet weak var p2_lifeCountLabel: UILabel!
    @IBOutlet weak var p2_minus1: UIButton!
    @IBOutlet weak var p2_minus5: UIButton!
    @IBOutlet weak var p2_plus1: UIButton!
    @IBOutlet weak var p2_plus5: UIButton!
    
    var p2_lifeCount = 20
    
    // game result
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabels()
    }
    
    func displayLabels() {
        // game result
        resultLabel.isHidden = true
        resultLabel.layer.cornerRadius = 5.0
        resultLabel.layer.masksToBounds = true
        
        // player 1
        p1_lifeCountLabel.text = "\(p1_lifeCount)"
        p1_lifeCountLabel.layer.cornerRadius = 5.0
        p1_lifeCountLabel.layer.masksToBounds = true
        if p1_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 1 LOSES!"
        }
        
        // player 2
        p2_lifeCountLabel.text = "\(p2_lifeCount)"
        p2_lifeCountLabel.layer.cornerRadius = 5.0
        p2_lifeCountLabel.layer.masksToBounds = true
        if p2_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 2 LOSES!"
        }

        // game is over
        if p1_lifeCount <= 0 || p2_lifeCount <= 0 {
            p1_lifeCountLabel.backgroundColor = UIColor.lightGray
            p1_lifeCountLabel.font = UIFont.systemFont(ofSize: 22.0)
            p1_minus1.isHidden = true
            p1_minus5.isHidden = true
            p1_plus1.isHidden = true
            p1_plus5.isHidden = true
            
            p2_lifeCountLabel.backgroundColor = UIColor.lightGray
            p2_lifeCountLabel.font = UIFont.systemFont(ofSize: 22.0)
            p2_minus1.isHidden = true
            p2_minus5.isHidden = true
            p2_plus1.isHidden = true
            p2_plus5.isHidden = true
            p1_plus5.isHighlighted = true
        }
    }
    
    @IBAction func p1_minus1ButtonDidTouchUpInside(_ sender: Any) {
        p1_lifeCount -= 1
        displayLabels()
    }
    
    @IBAction func p1_minus5ButtonDidTouchUpInside(_ sender: Any) {
        p1_lifeCount -= 5
        displayLabels()
    }
    
    @IBAction func p1_plus1ButtonDidTouchUpInside(_ sender: Any) {
        p1_lifeCount += 1
        displayLabels()
    }
    
    @IBAction func p1_plus5ButtonDidTouchUpInside(_ sender: Any) {
        p1_lifeCount += 5
        displayLabels()
    }
    
    @IBAction func p2_minus1ButtonDidTouchUpInside(_ sender: Any) {
        p2_lifeCount -= 1
        displayLabels()
    }
    
    @IBAction func p2_minus5ButtonDidTouchUpInside(_ sender: Any) {
        p2_lifeCount -= 5
        displayLabels()
    }
    
    @IBAction func p2_plus1ButtonDidTouchUpInside(_ sender: Any) {
        p2_lifeCount += 1
        displayLabels()
    }
    
    @IBAction func p2_plus5ButtonDidTouchUpInside(_ sender: Any) {
        p2_lifeCount += 5
        displayLabels()
    }
}

