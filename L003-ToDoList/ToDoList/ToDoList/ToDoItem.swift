//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Rain on 2020/7/10.
//

import SwiftUI

class ToDo: NSObject, NSCoding {
    func encode(with coder: NSCoder) {
        coder.encode(self.title, forKey: "title")
        coder.encode(self.dueDate, forKey: "dueDate")
        coder.encode(self.checked, forKey: "checked")
    }
    
    required init?(coder: NSCoder) {
        self.title      =   coder.decodeObject(forKey: "title") as? String ?? ""
        self.dueDate    =   coder.decodeObject(forKey: "dueDate") as? Date ?? Date()
        self.checked    =   coder.decodeBool(forKey: "checked")
    }
    
    var title: String = ""
    var dueDate: Date = Date()
    var checked: Bool = false
    var index: Int = 0
    
    init(title: String, dueDate: Date) {
        self.title      =   title
        self.dueDate    =   dueDate
    }
}

var emptyTodo: Todo = Todo(title: "", dueDate: Date())

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
