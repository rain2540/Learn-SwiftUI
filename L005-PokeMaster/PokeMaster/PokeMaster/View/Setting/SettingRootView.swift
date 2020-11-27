//
//  SettingRootView.swift
//  PokeMaster
//
//  Created by RAIN on 2020/11/27.
//

import SwiftUI

struct SettingRootView: View {

    var body: some View {
        NavigationView {
            SettingView().navigationBarTitle("设置")
        }
    }

}

struct SettingRootView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRootView()
    }
}
