//
//  ViewController.swift
//  LifeCounter
//
//  Created by 袁月 on 2022/4/19.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var addPlayerButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var historyButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var allPlayers: [Player] = [Player(score: 20, name: "Player 1"),
                                Player(score: 20, name: "Player 2"),
                                Player(score: 20, name: "Player 3"),
                                Player(score: 20, name: "Player 4")]
    var playerNum = 4
    
//    history
    var history: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // display result
        resultLabel.isHidden = true
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // look at history
    @IBAction func btnHistoryTouchedUpInside(_ sender: Any) {
        performSegue(withIdentifier: "history_vc", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "history_vc" {
            let historyVC = segue.destination as? HistoryViewController
            historyVC?.gameHistory = history
        }
    }
    
    // add player
    @IBAction func addPlayerButtonTouchedUpInside(_ sender: Any) {
        playerNum += 1
        allPlayers.append(Player(score: 20, name: "Player \(playerNum)"))
        tableView.reloadData()
    }
}

// nothing happen if select the cell
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return nil
    }
}

// construct cell
extension ViewController: UITableViewDataSource {
    // num of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    // num of sections
    func numberOfSections(in tableView: UITableView) -> Int {
        return allPlayers.count
    }
    
    // create cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        cell?.player = allPlayers[indexPath.section]
        cell?.configureCell()
        cell?.delegate = self
        return cell!
    }
}

extension ViewController: TableViewCellProtocal {
    func plusButtonTouchUpInside(_ playerHistory: String) {
        history.append("\(playerHistory) \n")
        addPlayerButton.isEnabled = false
    }

    func minusButtonTouchUpInside(_ playerHistory: String) {
        history.append("\(playerHistory) \n")
        addPlayerButton.isEnabled = false
        for eachPlayer in allPlayers {
            if eachPlayer.score <= 0 {
                resultLabel.isHidden = false
                resultLabel.text = "\(eachPlayer.name) LOSES!"
            }
        }
    }
    
    
}
