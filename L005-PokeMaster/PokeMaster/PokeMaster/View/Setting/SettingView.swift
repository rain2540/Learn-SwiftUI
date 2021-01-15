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


//extension Settings.Sorting {
extension AppState.Settings.Sorting {

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
    @EnvironmentObject var store: Store
    var settingsBinding: Binding<AppState.Settings> {
        $store.appState.settings
    }

    var body: some View {
        Form {
            accountSection
            optionSection
            actionSection
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

    var optionSection: some View {
        Section(header: Text("选项")) {
            Toggle(isOn: settingsBinding.showEnglishName, label: {
                Text("显示英文名")
            })

            Picker(
                selection: settingsBinding.sorting,
                label: Text("排序方式"),
                content: {
                    ForEach(AppState.Settings.Sorting.allCases, id: \.self) {
                        Text($0.text)
                    }
                }
            )

            Toggle(isOn: settingsBinding.showFavoriteOnly, label: {
                Text("只显示收藏")
            })
        }
    }

    var actionSection: some View {
        Section(header: Text("")) {
            Button(action: {
                print("清空缓存")
            }, label: {
                Text("清空缓存")
                    .foregroundColor(.red)
            })
        }
    }

}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        let store = Store()
        store.appState.settings.sorting = .name
        return SettingView().environmentObject(store)
    }
}
