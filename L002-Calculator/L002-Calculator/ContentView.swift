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

    VStack(spacing: 8) {
      CalculatorButtonRow(row: [
        .command(.clear), .command(.flip), .command(.percent), .op(.divide)
      ])
      CalculatorButtonRow(row: [
        .digit(7), .digit(8), .digit(9), .op(.multiply)
      ])
      CalculatorButtonRow(row: [
        .digit(4), .digit(5), .digit(6), .op(.minus)
      ])
      CalculatorButtonRow(row: [
        .digit(1), .digit(2), .digit(3), .op(.plus)
      ])
      CalculatorButtonRow(row: [
        .digit(0), .dot, .op(.equal)
      ])
    }

  }

}


struct CalculatorButtonRow: View {

  let row: [CalculatorButtonItem]

  var body: some View {
    HStack {
      ForEach(row, id: \.self) { item in
        CalculatorButton(
          title: item.title,
          size: item.size,
          backgroundColorName: item.backgroundColorName) {
            print("Button: \(item.title)")
        }
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
