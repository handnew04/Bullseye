//
//  Game.swift
//  Bullseye
//
//  Created by yujung on 2021/09/17.
//

import Foundation

struct Game {
    var target: Int = Int.random(in: 1..<100)
    var score = 999
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        100 - abs(self.target - sliderValue)
    }
}
