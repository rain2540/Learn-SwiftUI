//
//  TodoItem.swift
//  ToDoList
//
//  Created by Rain on 2020/7/10.
//

import SwiftUI

class Todo: NSObject, NSCoding {
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

struct TodoItem: View {
    @ObservedObject var main: Main
    @Binding var todoIndex: Int
    @State var checked: Bool = false
    
    var body: some View {
        HStack {
            Button {
                editingMode = true
                editingTodo = self.main.todos[self.todoIndex]
                editingIndex = self.todoIndex
                self.main.detailsTitle = editingTodo.title
                self.main.dueDate = editingTodo.dueDate
                self.main.detailsShowing = true
                detailsShouldUpdateTitle = true
            } label: {
                HStack {
                    VStack {
                        Rectangle()
                            .fill(Color("theme"))
                            .frame(width: 8.0)
                    }
                    Spacer()
                        .frame(width: 10.0)
                    VStack {
                        Spacer()
                            .frame(height: 12.0)
                        HStack {
                            Text(main.todos[todoIndex].title)
                                .font(.headline)
                                .foregroundColor(Color("todoItemTitle"))
                            Spacer()
                        }
                        Spacer()
                            .frame(height: 4.0)
                        HStack {
                            Image(systemName: "clock")
                                .resizable()
                                .frame(width: 12.0, height: 12.0)
                            Text(formatter.string(from: main.todos[todoIndex].dueDate))
                                .font(.subheadline)
                            Spacer()
                        }.foregroundColor(Color("todoItemSubTitle"))
                        Spacer()
                            .frame(height: 12)
                    }
                }
            }
            Button {
                self.main.todos[self.todoIndex].checked.toggle()
                self.checked = self.main.todos[self.todoIndex].checked
                do {
                    let archivedData = try NSKeyedArchiver.archivedData(withRootObject: self.main.todos, requiringSecureCoding: false)
                    UserDefaults.standard.set(archivedData, forKey: "todos")
                } catch {
                    print("error")
                }
            } label: {
                HStack {
                    Spacer()
                        .frame(width: 12)
                    VStack {
                        Spacer()
                        Image(systemName: self.checked ? "checkmark.square.fill" : "square")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.gray)
                        Spacer()
                    }
                    Spacer()
                        .frame(width: 12)
                }
            }.onAppear {
                self.checked = self.main.todos[self.todoIndex].checked
            }

        }.background(Color(self.checked ? "todoItem-bg-checked" : "todoItem-bg"))
        .animation(.spring())
    }
}


struct ToDoItem_Previews: PreviewProvider {
    static var previews: some View {
        TodoItem(main: Main(), todoIndex: .constant(0))
    }
}

