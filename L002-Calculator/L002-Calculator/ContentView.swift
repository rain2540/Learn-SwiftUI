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
      CalculatorButton()
    }
  }

}


struct CalculatorButton: View {
  var body: some View {
    Button(action: {
      print("Button: +")
    }) {
      Text("+")
        .font(.system(size: 38))
        .foregroundColor(.white)
        .frame(width: 88, height: 88)
        .background(Color("operatorBackground"))
        .cornerRadius(44)
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
