//
//  Badge.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/3.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct Badge: View {

    var body: some View {
        Path { path in
            var width: CGFloat = 100.0
            let height = width
            path.move(to: CGPoint(x: width * 0.95, y: height * 0.2))

            HexagonParameters.points.forEach {
                path.addLine(
                    to: .init(
                        x: width * $0.useWidth.0 * $0.xFactors.0,
                        y: height * $0.useHeight.0 * $0.yFactors.0
                    )
                )
            }
        }
        .fill(Color.black)
    }

}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
