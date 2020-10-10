//
//  NavigationPrimary.swift
//  MacLandmarks
//
//  Created by RAIN on 2020/10/10.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct NavigationPrimary: View {

    @State private var filter: FilterType = .all

    var body: some View {
        VStack {
            Filter(filter: $filter)
                .controlSize(.small)
                .padding([.top, .leading], 8)
                .padding(.trailing, 4)
        }
    }

}

struct NavigationPrimary_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPrimary()
            .environmentObject(UserData())
    }
}
