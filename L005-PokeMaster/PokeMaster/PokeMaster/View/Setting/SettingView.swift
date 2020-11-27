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

    @Published var accountBehavior = AccountBehavior.login
    @Published var email = ""
    @Published var password = ""
    @Published var verifyPassword = ""

    @Published var showEnglishName = true
    @Published var sorting = Sorting.id
    @Published var showFavorite = false

}


extension Settings.Sorting {

    var text: String {
        switch self {
            case .id: return "ID"
            case .name: return "名字"
            case .color: return "颜色"
            case .favorite: return "最爱"
        }
    }

}


extension Settings.AccountBehavior {

    var text: String {
        switch self {
            case .register: return "注册"
            case .login: return "登录"
        }
    }

}


struct SettingView: View {

    @ObservedObject var settings = Settings()

    var body: some View {
        Form {
            accountSection
        }
    }

    var accountSection: some View {
        Section(header: Text("账户")) {
            Picker(selection: $settings.accountBehavior, label: Text(""), content: {
                ForEach(Settings.AccountBehavior.allCases, id: \.self) {
                    Text($0.text)
                }
            })
            .pickerStyle(SegmentedPickerStyle())
            TextField("电子邮箱", text: $settings.email)
            SecureField("密码", text: $settings.password)
            if settings.accountBehavior == .register {
                SecureField("确认密码", text: $settings.verifyPassword)
            }
            Button(settings.accountBehavior.text) {
                print("登录 / 注册")
            }
        }
    }

}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
