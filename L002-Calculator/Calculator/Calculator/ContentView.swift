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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView().previewDevice("iPhone SE")
            ContentView().previewDevice("iPad Air 2")
        }
    }
}
