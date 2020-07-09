//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Rain on 2020/7/10.
//

import SwiftUI

class ToDo {
    var title: String = ""
    var dueDate: Date = Date()
    var checked: Bool = false
    var index: Int = 0
}

struct ToDoItem: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ToDoItem_Previews: PreviewProvider {
    static var previews: some View {
        ToDoItem()
    }
}
