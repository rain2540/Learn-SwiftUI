//
//  ContentView.swift
//  L001-List
//
//  Created by RAIN on 2019/12/10.
//  Copyright © 2019 Smartech. All rights reserved.
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
