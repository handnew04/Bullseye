//
//  Shapes.swift
//  Bullseye
//
//  Created by yujung on 2022/02/20.
//

import SwiftUI

struct Shapes: View {
  var body: some View {
    VStack {
      Circle()
//        .fill(/*@START_MENU_TOKEN@*/Color.blue/*@END_MENU_TOKEN@*/)
        .strokeBorder(Color.blue, lineWidth: 20.0)
        .frame(width: 200, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
      RoundedRectangle(cornerRadius: 20.0)
        .fill(Color.blue)
        .frame(width: 200, height: 100.0)
      Capsule()
        .fill(Color.blue)
        .frame(width: 200, height: 100.0)
      Ellipse()
        .fill(Color.blue)
        .frame(width: 200, height: 100.0)
    }
    .background(Color.green)
  }
}

struct Shapes_Previews: PreviewProvider {
  static var previews: some View {
    Shapes()
  }
}
