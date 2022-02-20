//
//  ButtonViews.swift
//  Bullseye
//
//  Created by yujung on 2021/11/17.
//

import SwiftUI

struct HitMeButtion: View {
    var body: some View {
      Button(action: {
        print("Hello, SwiftUI!")
        //alertIsVisible = true
      }) {
        Text("Hit me".uppercased())
          .bold()
          .font(.title3)
      }    }
}

struct ButtonViews_Previews: PreviewProvider {
    static var previews: some View {
        HitMeButtion()
    }
}
