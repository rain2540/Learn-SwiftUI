//
//  Filter.swift
//  MacLandmarks
//
//  Created by RAIN on 2020/10/10.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct Filter: View {

    @EnvironmentObject private var userData: UserData

    var body: some View {
        HStack {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites Only")
            }
        }
    }

}

struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter()
            .environmentObject(UserData())
    }
}
