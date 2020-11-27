//
//  SettingView.swift
//  PokeMaster
//
//  Created by RAIN on 2020/11/27.
//

import SwiftUI


class Settings: ObservableObject {

    enum AccountBehavior: CaseIterable {
        case register, login
    }

    enum Sorting: CaseIterable {
        case id, name, color, favorite
    }

}


struct SettingView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
