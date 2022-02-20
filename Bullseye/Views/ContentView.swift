//
//  ContentView.swift
//  Bullseye
//
//  Created by yujung on 2021/09/09.
//

import SwiftUI

struct ContentView: View {
  
  @State private var alertIsVisible = false
  @State private var sliderValue = 50.0
  @State private var game = Game()
  
  var body: some View {
    ZStack {
      Color("BackgroundColor")
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
      VStack {
        InstructionView(game: $game)
        SliderView(sliderValue: $sliderValue)
        HitMeButtonView(alertIsVisible: $alertIsVisible, sliderValue: $sliderValue, game: $game)
      }
    }
  }
}

struct InstructionView: View {
  @Binding var game: Game
  
  var body: some View{
    VStack{
      InstructionText(text: "⚾️⚾️⚾️\nPut the Bullseye as close as you can to")
        .padding(.leading, 30.0)
        .padding(.trailing, 30.0)
      BigNumberText(text: String(game.target))
    }
  }
}

struct SliderView: View {
  @Binding var sliderValue: Double
  
  var body: some View {
    HStack{
    SlideLabelText(text: "1")
    Slider(value: $sliderValue, in:1.0...100.0)
    SlideLabelText(text: "100")
      .padding()
    }
  }
}

struct HitMeButtonView: View {
  @Binding var alertIsVisible: Bool
  @Binding var sliderValue: Double
  @Binding var game: Game
  
  var body: some View {
    HitMeButtion()
      .padding(20.0)
      .background(ZStack {
        Color("ButtonColor")
        LinearGradient(gradient: Gradient(colors: [Color.white.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
      })
      .foregroundColor(Color.white)
      .cornerRadius(21.0)
      .overlay(
        RoundedRectangle(cornerRadius: 21.0)
          .strokeBorder(Color.white, lineWidth: 2.0)
      )
      .alert(isPresented: $alertIsVisible, content: {
        let roundedValue = Int(sliderValue.rounded())
        return Alert(title: Text("Hello there!"), message: Text("slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue)) points this round."), dismissButton: .default(Text("Awesome!")))
      })
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
    ContentView()
      .previewLayout(.fixed(width: 586, height: 320))
    ContentView()
      .preferredColorScheme(.dark)
      .environment(\.sizeCategory, .large)
    ContentView()
      .preferredColorScheme(.dark)
      .previewLayout(.fixed(width: 586, height: 320))
  }
}
