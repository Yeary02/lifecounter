//
//  ViewController.swift
//  LifeCounter
//
//  Created by 袁月 on 2022/4/19.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    // player 1
    @IBOutlet weak var p1_lifeCountLabel: UILabel!
    @IBOutlet weak var p1_minus1: UIButton!
    @IBOutlet weak var p1_plus1: UIButton!
    @IBOutlet weak var p1_minus: UITextField!
    @IBOutlet weak var p1_plus: UITextField!
    var p1_lifeCount = 20
    
    // player 2
    @IBOutlet weak var p2_lifeCountLabel: UILabel!
    @IBOutlet weak var p2_minus1: UIButton!
    @IBOutlet weak var p2_plus1: UIButton!
    @IBOutlet weak var p2_minus: UITextField!
    @IBOutlet weak var p2_plus: UITextField!
    var p2_lifeCount = 20
    
    // player 3
    @IBOutlet weak var p3_lifeCountLabel: UILabel!
    @IBOutlet weak var p3_minus1: UIButton!
    @IBOutlet weak var p3_plus1: UIButton!
    @IBOutlet weak var p3_minus: UITextField!
    @IBOutlet weak var p3_plus: UITextField!
    var p3_lifeCount = 20
    
    // player 4
    @IBOutlet weak var p4_lifeCountLabel: UILabel!
    @IBOutlet weak var p4_minus1: UIButton!
    @IBOutlet weak var p4_plus1: UIButton!
    @IBOutlet weak var p4_minus: UITextField!
    @IBOutlet weak var p4_plus: UITextField!
    var p4_lifeCount = 20
    
    // player 5
    @IBOutlet weak var p5_lifeCountLabel: UILabel!
    @IBOutlet weak var p5_minus1: UIButton!
    @IBOutlet weak var p5_plus1: UIButton!
    @IBOutlet weak var p5_minus: UITextField!
    @IBOutlet weak var p5_plus: UITextField!
    var p5_lifeCount = 20
    
    // player 6
    @IBOutlet weak var p6_lifeCountLabel: UILabel!
    @IBOutlet weak var p6_minus1: UIButton!
    @IBOutlet weak var p6_plus1: UIButton!
    @IBOutlet weak var p6_minus: UITextField!
    @IBOutlet weak var p6_plus: UITextField!
    var p6_lifeCount = 20
    
    // player 7
    @IBOutlet weak var p7_lifeCountLabel: UILabel!
    @IBOutlet weak var p7_minus1: UIButton!
    @IBOutlet weak var p7_plus1: UIButton!
    @IBOutlet weak var p7_minus: UITextField!
    @IBOutlet weak var p7_plus: UITextField!
    var p7_lifeCount = 20
    
    // player 8
    @IBOutlet weak var p8_lifeCountLabel: UILabel!
    @IBOutlet weak var p8_minus1: UIButton!
    @IBOutlet weak var p8_plus1: UIButton!
    @IBOutlet weak var p8_minus: UITextField!
    @IBOutlet weak var p8_plus: UITextField!
    var p8_lifeCount = 20
    
    // game result
    @IBOutlet weak var resultLabel: UILabel!
    
    // stack
    @IBOutlet weak var p1_stack: UIStackView!
    @IBOutlet weak var p2_stack: UIStackView!
    @IBOutlet weak var p3_stack: UIStackView!
    @IBOutlet weak var p4_stack: UIStackView!
    @IBOutlet weak var p5_stack: UIStackView!
    @IBOutlet weak var p6_stack: UIStackView!
    @IBOutlet weak var p7_stack: UIStackView!
    @IBOutlet weak var p8_stack: UIStackView!
    
    // add player button
    @IBOutlet weak var addButton: UIButton!
    
    // history
    var history: [String] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "history_vc" {
            let historyVC = segue.destination as? HistoryViewController
            historyVC?.gameHistory = history
            print(history)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // initial display
        resultLabel.isHidden = true
        p5_stack.isHidden = true
        p6_stack.isHidden = true
        p7_stack.isHidden = true
        p8_stack.isHidden = true
        
        displayLabels()
    }
    
    func displayLabels() {
        // display life count
        p1_lifeCountLabel.text = "\(p1_lifeCount)"
        p2_lifeCountLabel.text = "\(p2_lifeCount)"
        p3_lifeCountLabel.text = "\(p3_lifeCount)"
        p4_lifeCountLabel.text = "\(p4_lifeCount)"
        p5_lifeCountLabel.text = "\(p5_lifeCount)"
        p6_lifeCountLabel.text = "\(p6_lifeCount)"
        p7_lifeCountLabel.text = "\(p7_lifeCount)"
        p8_lifeCountLabel.text = "\(p8_lifeCount)"
        
        // display "player x loses"
        if p1_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 1 LOSES!"
        } else if p2_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 2 LOSES!"
        } else if p3_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 3 LOSES!"
        } else if p4_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 4 LOSES!"
        } else if p5_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 5 LOSES!"
        } else if p6_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 6 LOSES!"
        } else if p7_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 7 LOSES!"
        } else if p8_lifeCount <= 0 {
            resultLabel.isHidden = false
            resultLabel.text = "Player 8 LOSES!"
        }
        
        // disable add player button when start the game
        if p1_lifeCount != 20 || p2_lifeCount != 20 || p3_lifeCount != 20 || p4_lifeCount != 20 || p5_lifeCount != 20 || p6_lifeCount != 20 || p7_lifeCount != 20 || p8_lifeCount != 20 {
            addButton.isEnabled = false
        }
        
        // game over
        if p1_lifeCount <= 0 || p2_lifeCount <= 0 || p3_lifeCount <= 0 || p4_lifeCount <= 0 || p5_lifeCount <= 0 || p6_lifeCount <= 0 || p7_lifeCount <= 0 || p8_lifeCount <= 0 {
            p1_stack.isHidden = true
            p2_stack.isHidden = true
            p3_stack.isHidden = true
            p4_stack.isHidden = true
            p5_stack.isHidden = true
            p6_stack.isHidden = true
            p7_stack.isHidden = true
            p8_stack.isHidden = true
        }
    }
    
    @IBAction func btnHistoryTouchedUpInside(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(identifier: "history_vc") as! HistoryViewController
        present(vc, animated: true)
    }
    
    @IBAction func addPlayerButtonTouchedUpInside(_ sender: Any) {
        // add one stack
        if p3_stack.isHidden {
            p3_stack.isHidden = false
        } else if p4_stack.isHidden {
            p4_stack.isHidden = false
        } else if p5_stack.isHidden {
            p5_stack.isHidden = false
        } else if p6_stack.isHidden {
            p6_stack.isHidden = false
        } else if p7_stack.isHidden {
            p7_stack.isHidden = false
        } else if p8_stack.isHidden {
            p8_stack.isHidden = false
        }
    }
    
    @IBAction func textFieldDidEndEditing(_ sender: UITextField) {
        let value = Int(sender.text!)

        switch sender {
        case p1_minus:
            p1_lifeCount += value!
            history.append("Player 1: - \(p1_lifeCount)")
        case p1_plus:
            p1_lifeCount += value!
            history.append("Player 1: + \(p1_lifeCount)")
        case p2_minus:
            p2_lifeCount += value!
            history.append("Player 2: - \(p1_lifeCount)")
        case p2_plus:
            p2_lifeCount += value!
            history.append("Player 2: + \(p1_lifeCount)")
        case p3_minus:
            p3_lifeCount += value!
            history.append("Player 3: - \(p1_lifeCount)")
        case p3_plus:
            p3_lifeCount += value!
            history.append("Player 3: + \(p1_lifeCount)")
        case p4_minus:
            p4_lifeCount += value!
            history.append("Player 4: - \(p1_lifeCount)")
        case p4_plus:
            p4_lifeCount += value!
            history.append("Player 4: + \(p1_lifeCount)")
        case p5_minus:
            p5_lifeCount += value!
            history.append("Player 5: - \(p1_lifeCount)")
        case p5_plus:
            p5_lifeCount += value!
            history.append("Player 5: + \(p1_lifeCount)")
        case p6_minus:
            p6_lifeCount += value!
            history.append("Player 6: - \(p1_lifeCount)")
        case p6_plus:
            p6_lifeCount += value!
            history.append("Player 6: + \(p1_lifeCount)")
        case p7_minus:
            p7_lifeCount += value!
            history.append("Player 7: - \(p1_lifeCount)")
        case p7_plus:
            p7_lifeCount += value!
            history.append("Player 7: + \(p1_lifeCount)")
        case p8_minus:
            p8_lifeCount += value!
            history.append("Player 8: - \(p1_lifeCount)")
        case p8_plus:
            p8_lifeCount += value!
            history.append("Player 8: + \(p1_lifeCount)")
        default:
            break
        }
        displayLabels()
    }
    
    
    @IBAction func buttonHandler(_ sender: UIButton) {
        switch sender {
        case p1_minus1:
            p1_lifeCount -= 1
            history.append("Player 1: -1")
        case p1_plus1:
            p1_lifeCount += 1
            history.append("Player 1: +1")
        case p2_minus1:
            p2_lifeCount -= 1
            history.append("Player 2: -1")
        case p2_plus1:
            p2_lifeCount += 1
            history.append("Player 2: +1")
        case p3_minus1:
            p3_lifeCount -= 1
            history.append("Player 3: -1")
        case p3_plus1:
            p3_lifeCount += 1
            history.append("Player 3: +1")
        case p4_minus1:
            p4_lifeCount -= 1
            history.append("Player 4: -1")
        case p4_plus1:
            p4_lifeCount += 1
            history.append("Player 4: +1")
        case p5_minus1:
            p5_lifeCount -= 1
            history.append("Player 5: -1")
        case p5_plus1:
            p5_lifeCount += 1
            history.append("Player 5: +1")
        case p6_minus1:
            p6_lifeCount -= 1
            history.append("Player 6: -1")
        case p6_plus1:
            p6_lifeCount += 1
            history.append("Player 6: +1")
        case p7_minus1:
            p7_lifeCount -= 1
            history.append("Player 7: -1")
        case p7_plus1:
            p7_lifeCount += 1
            history.append("Player 7: +1")
        case p8_minus1:
            p8_lifeCount -= 1
            history.append("Player 8: -1")
        case p8_plus1:
            p8_lifeCount += 1
            history.append("Player 8: +1")
        default:
            break
        }
        displayLabels()
    }
}

