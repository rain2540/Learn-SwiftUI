//
//  ContentView.swift
//  Memorize
//
//  Created by Rain on 2021/7/1.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(lineWidth: 3)
            .padding(.horizontal)
            .foregroundColor(.red)
        //Text("Hello, world!").foregroundColor(/*@START_MENU_TOKEN@*/.orange/*@END_MENU_TOKEN@*/).padding()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
