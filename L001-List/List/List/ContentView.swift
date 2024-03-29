//
//  ContentView.swift
//  List
//
//  Created by Rain on 2020/7/8.
//

import SwiftUI

struct ContentView: View {

  var body: some View {
    TabView {
      ListExampleView()
        .tabItem {
          Image(systemName: "circle")
          Text("List")
        }
      FormExampleView()
        .tabItem {
          tabbarItem(text: "Form", image: "icon-movies")
        }
    }
  }

  func tabbarItem(text: String, image: String) -> some View {
    VStack {
      Image(image)
      Text(text)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
