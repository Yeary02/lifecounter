//
//  Player.swift
//  LifeCounter
//
//  Created by 袁月 on 2022/4/28.
//

import Foundation

class Player {
    var score: Int
    var name: String
    
    init(score: Int, name: String) {
        self.score = score
        self.name = name
    }
    
    func add(input: Int) {
        score += input
    }
    
    func subtract(input: Int) {
        score -= input
    }
}
