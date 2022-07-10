//
//  ListExampleView.swift
//  List
//
//  Created by Rain on 2020/7/8.
//

import SwiftUI

struct ListExampleView: View {

  let options = ["One", "Two"]

  @State private var text = ""
  @State private var password = ""
  @State private var toggleOn = true
  @State private var pickerSelection = 0
  @State private var date = Date()
  @State private var sliderValue = 4.0
  @State private var stepperValue = 1

  var body: some View {
    NavigationView {
      List {

        Section(header: Text("First Section")) {

          Text("Text")

          Image(systemName: "circle")

          TextField("TextField", text: $text)

          SecureField("SecureField", text: $password)
        }

        Section(header: Text("Second Section")) {

          Button("Button") {
            print("CLick Button in a list row")
          }

          Toggle("Toggle", isOn: $toggleOn)

          HStack {
            Text("Slider, Value: \(Int(sliderValue))")
            Slider(value: $sliderValue, in: 0 ... 10)
          }

          Stepper("Stepper, Value: \(stepperValue)", value: $stepperValue)
        }

        Section(header: Text("Third Section")) {
          Picker(selection: $pickerSelection, label: Text("Picker")) {
            ForEach(0 ..< options.count) {
              Text(self.options[$0]).tag($0)
            }
          }

          DatePicker("DatePicker", selection: $date)
        }
      }
      .navigationBarTitle(Text("List Examples"))
    }
  }

}

struct ListExampleView_Previews: PreviewProvider {

  static var previews: some View {
    ListExampleView()
  }

}
