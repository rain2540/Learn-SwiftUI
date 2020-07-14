//
//  Home.swift
//  ToDoList
//
//  Created by Rain on 2020/7/10.
//

import SwiftUI

var editingMode: Bool = false
var editingTodo: Todo = emptyTodo
var editingIndex: Int = 0
var detailsShouldUpdateTitle: Bool = false

class Main: ObservableObject {

}

struct Home: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
