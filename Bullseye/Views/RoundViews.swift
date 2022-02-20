//
//  RoundViews.swift
//  Bullseye
//
//  Created by yujung on 2022/02/20.
//

import SwiftUI

struct RoundImageViewStrocked: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("TextColor"))
      .frame(width: 56.0, height: 56.0)
      .overlay(
        Circle()
          .strokeBorder(Color("ButtonStrokeColor"), lineWidth: 1.0))
  }
}

struct RoundImageViewFilled: View {
  var systemName: String
  
  var body: some View {
    Image(systemName: systemName)
      .font(.title)
      .foregroundColor(Color("ButtonFilledTextColor"))
      .frame(width: 56.0, height: 56.0)
      .background(
        Circle()
          .fill(Color("ButtonFilledBackgroundColor"))
      )
    
  }
}

struct PreviewView: View {
  var body: some View {
    VStack(spacing: 10) {
      RoundImageViewStrocked(systemName: "arrow.counterclockwise")
      RoundImageViewFilled(systemName: "list.dash")
    }
  }
}

struct RoundViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewView()
    PreviewView()
      .preferredColorScheme(.dark)
  }
}
