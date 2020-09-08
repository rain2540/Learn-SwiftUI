//
//  Badge.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/3.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct Badge: View {

    var badgeSymbols: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 0))
            .opacity(0.5)
    }

    var body: some View {
        ZStack {
            BadgeBackground()

            self.badgeSymbols
        }

    }

}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
