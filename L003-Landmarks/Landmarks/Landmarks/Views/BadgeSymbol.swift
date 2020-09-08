//
//  BadgeSymbol.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/4.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct BadgeSymbol: View {

    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width = min(geometry.size.width, geometry.size.height)
                let height = width * 0.75
                let spacing = width * 0.030
                let middle = width / 2
                let topWidth = 0.226 * width
                let topHeight = 0.488 * height

                path.addLines([
                    CGPoint(x: middle, y: spacing),
                    CGPoint(x: middle - topWidth, y: topHeight - spacing),
                    CGPoint(x: middle, y: topHeight / 2 + spacing),
                    CGPoint(x: middle + topWidth, y: topHeight - spacing),
                    CGPoint(x: middle, y: spacing),
                ])
            }
        }
    }

}

struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
