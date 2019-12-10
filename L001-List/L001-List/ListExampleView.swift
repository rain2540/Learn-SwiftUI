//
//  ListExampleView.swift
//  L001-List
//
//  Created by RAIN on 2019/12/10.
//  Copyright © 2019 Smartech. All rights reserved.
//

import SwiftUI

struct ListExampleView: View {

  @State private var text = ""

  var body: some View {
    List {
      Text("Text")
      Image(systemName: "circle")
    }
  }

}

struct ListExampleView_Previews: PreviewProvider {
  static var previews: some View {
    ListExampleView()
  }
}
