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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ListExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ListExampleView()
    }
}
