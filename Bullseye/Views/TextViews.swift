//
//  TextViews.swift
//  Bullseye
//
//  Created by yujung on 2021/10/16.
//

import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
        .bold()
        .kerning(2.0)
        .multilineTextAlignment(.center)
        .lineSpacing(4.0)
        .font(.footnote)
        .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
        .kerning(-1.0)
        .font(.largeTitle)
        .fontWeight(.black)
        .foregroundColor(Color("TextColor"))
  }
}

struct SlideLabelText: View {
  var text: String
  
  var body: some View {
      Text(text)
        .bold()
        .foregroundColor(Color("TextColor"))
        .frame(width:35.0)
  }
}

struct LabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .font(.caption)
      .kerning(1.5)
      .foregroundColor(Color("TextColor"))
  }
}

struct ScoreText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .font(.title3)
      .kerning(-0.2)
      .multilineTextAlignment(.center)
      .foregroundColor(Color("TextColor"))
  }
}

struct PreviewTextView: View {
  
  var body: some View {
    VStack{
    InstructionText(text : "Instructions")
    BigNumberText(text: "999")
    LabelText(text: "Label")
    ScoreText(text: "999")
    }
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    PreviewTextView()
    PreviewTextView()
      .preferredColorScheme(.dark)
  }
}
