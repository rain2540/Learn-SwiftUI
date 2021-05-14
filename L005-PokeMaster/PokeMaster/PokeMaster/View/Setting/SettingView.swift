//
//  SettingView.swift
//  PokeMaster
//
//  Created by RAIN on 2020/11/27.
//

import SwiftUI

// Settings 已经被全部移动到 `AppState` 中
/*
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
*/

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


//extension Settings.AccountBehavior {
extension AppState.Settings.AccountBehavior {

    var text: String {
        switch self {
            case .register: return "注册"
            case .login: return "登录"
        }
    }

}


struct SettingView: View {

    //@ObservedObject var settings = Settings()
    @EnvironmentObject var store: Store
    var settings: AppState.Settings {
        store.appState.settings
    }
    var settingsBinding: Binding<AppState.Settings> {
        $store.appState.settings
    }

    var body: some View {
        Form {
            accountSection
            optionSection
            actionSection
        }
        .alert(item: settingsBinding.loginError) { (error) -> Alert in
            Alert(title: Text(error.localizedDescription))
        }
    }

    var accountSection: some View {
        Section(header: Text("账户")) {
            if settings.loginUser == nil {
                Picker(selection: settingsBinding.checker.accountBehavior, label: Text(""), content: {
                    ForEach(AppState.Settings.AccountBehavior.allCases, id: \.self) {
                        Text($0.text)
                    }
                })
                .pickerStyle(SegmentedPickerStyle())
                TextField("电子邮箱", text: settingsBinding.checker.email)
                    .foregroundColor(settings.isEmailValid ? .green : .red)
                SecureField("密码", text: settingsBinding.checker.password)
                if settings.checker.accountBehavior == .register {
                    SecureField("确认密码", text: settingsBinding.checker.verifyPassword)
                }
                if settings.loginRequesting {
                    Text("登录中...")
                } else {
                    Button(settings.checker.accountBehavior.text) {
                        print("登录 / 注册")
                        self.store.dispatch(
                            .login(
                                email: self.settings.checker.email,
                                password: self.settings.checker.password
                            )
                        )
                    }
                }
            } else {
                Text(settings.loginUser!.email)
                Button("注销") {
                    print("注销")
                }
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
