//
//  CircleImage.swift
//  Landmarks
//
//  Created by RAIN on 2020/8/25.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
