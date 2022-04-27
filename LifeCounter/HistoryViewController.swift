//
//  HistoryViewController.swift
//  LifeCounter
//
//  Created by 袁月 on 2022/4/26.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var historyLabel: UILabel?
    var gameHistory: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        historyLabel?.text = gameHistory.description
    }
}
