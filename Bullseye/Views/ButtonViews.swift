//
//  ButtonViews.swift
//  Bullseye
//
//  Created by yujung on 2021/11/17.
//

import SwiftUI

struct HitMeButtion: View {
  @Binding var alertIsVisible: Bool
  //  @Binding var game: Game
  //  @Binding var sliderValue: Double
  
  var body: some View {
    Button(action: {
      alertIsVisible = true
      //game.startNewRound(points: game.points(sliderValue: Int(sliderValue)))
    }) {
      Text("Hit me".uppercased())
        .bold()
        .font(.title3)
    }
  }
}

//struct ButtonViews_Previews: PreviewProvider {
//  static var previews: some View {
//    HitMeButtion()
//  }
//}
