//
//  ContentView.swift
//  Calculator
//
//  Created by Rain on 2020/7/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!").padding()
    }
}


struct CalculatorButton: View {
  
  let fontSize: CGFloat = 38
  let title: String
  let size: CGSize
  let backgroundColorName: String
  let foregroundColor: Color
  let action: () -> Void
  
  var body: some View {
    Button(action: action) {
      Text(title)
        .font(.system(size: fontSize * scale))
        .foregroundColor(foregroundColor)
        .frame(width: size.width * scale, height: size.height * scale)
        .background(Color(backgroundColorName))
        .cornerRadius(size.width * scale / 2)
    }
  }
}


struct HistoryView: View {
    
    @ObservedObject var model: CalculatorModel
    
    var body: some View {
        VStack {
            if model.totalCount == 0 {
                Text("没有履历")
            } else {
                HStack {
                    Text("履历").font(.headline)
                    Text("\(model.historyDetail)").lineLimit(nil)
                }
                HStack {
                    Text("显示").font(.headline)
                    Text("\(model.brain.output)")
                }
                Slider(
                    value: $model.slidingIndex,
                    in: 0 ... Float(model.totalCount),
                    step: 1
                )
            }
        }.padding()
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView().previewDevice("iPhone SE")
            ContentView().previewDevice("iPad Air 2")
        }
    }
}
