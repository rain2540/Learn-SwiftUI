//
//  ListExampleView.swift
//  L001-List
//
//  Created by RAIN on 2019/12/10.
//  Copyright © 2019 Smartech. All rights reserved.
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
    List {
      Text("Text")
      Image(systemName: "circle")
      TextField("TextField", text: $text)
      SecureField("SecureField", text: $password)
    }
  }

}

struct ListExampleView_Previews: PreviewProvider {
  static var previews: some View {
    ListExampleView()
  }
}
