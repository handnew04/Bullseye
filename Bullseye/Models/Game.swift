//
//  Game.swift
//  Bullseye
//
//  Created by yujung on 2021/09/17.
//

import Foundation

struct Game {
  var target: Int = Int.random(in: 1..<100)
  var score = 0
  var round = 1
  
//  func points(sliderValue: Int) -> Int {
//    var point = 100 - abs(self.target - sliderValue)
//
//    if(point == 100) {
//      point += 100
//    } else if(point <= 98) {
//      point += 50
//    }
//
//    return point
//  }
  
  func points(sliderValue: Int) -> Int {
    let difference = abs(target - sliderValue)
    let bonus: Int
    if difference == 0 {
      bonus = 100
    } else if difference <= 2 {
      bonus = 50
    } else {
      bonus = 0
    }
    
    return 100 - difference + bonus
  }
  
  mutating func startNewRound(points: Int) {
    score += points
    round += 1
    target = Int.random(in: 1...100)
  }
  
  mutating func restart() {
    score = 0
    round = 1
    target = Int.random(in: 1...100)
  }
}
