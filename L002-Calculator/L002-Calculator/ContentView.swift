//
//  ContentView.swift
//  L002-Calculator
//
//  Created by RAIN on 2019/12/10.
//  Copyright © 2019 Smartech. All rights reserved.
//

import SwiftUI

struct ContentView: View {

  var body: some View {

    HStack {
      CalculatorButton(
        title: "+",
        size: CGSize(width: 88, height: 88),
        backgroundColorName: "operatorBackground") {
          print("Button: +")
      }
    }

  }

}


struct CalculatorButton: View {

  let fontSize: CGFloat = 38
  let title: String
  let size: CGSize
  let backgroundColorName: String
  let action: () -> Void

  var body: some View {
    Button(action: action) {
      Text(title)
        .font(.system(size: fontSize))
        .foregroundColor(.white)
        .frame(width: size.width, height: size.height)
        .background(Color(backgroundColorName))
        .cornerRadius(size.width / 2)
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
