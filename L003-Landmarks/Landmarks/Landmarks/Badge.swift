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
            path.move(
                to: CGPoint(
                    x: width * 0.95,
                    y: height * (0.20 + HexagonParameters.adjustment)
                )
            )

            HexagonParameters.points.forEach {
                path.addLine(
                    to: .init(
                        x: width * $0.useWidth.0 * $0.xFactors.0,
                        y: height * $0.useHeight.0 * $0.yFactors.0
                    )
                )

                path.addQuadCurve(
                    to: .init(
                        x: width * $0.useWidth.1 * $0.xFactors.1,
                        y: width * $0.useHeight.1 * $0.yFactors.1
                    ),
                    control: .init(
                        x: width * $0.useWidth.2 * $0.xFactors.2,
                        y: width * $0.useHeight.2 * $0.yFactors.2
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
