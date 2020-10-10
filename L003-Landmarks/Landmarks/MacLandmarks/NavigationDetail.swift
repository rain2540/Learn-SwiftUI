//
//  NavigationDetail.swift
//  MacLandmarks
//
//  Created by RAIN on 2020/10/10.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct NavigationDetail: View {

    var landmark: Landmark

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                HStack(alignment: .center, spacing: 24) {
                    CircleImage(image: landmark.image)

                    VStack(alignment: .leading) {
                        Text(landmark.name).font(.title)
                        Text(landmark.park)
                        Text(landmark.state)
                    }
                    .font(.caption)
                }
            }
            .padding()
            .frame(maxWidth: 700)
        }
    }

}

struct NavigationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetail(landmark: landmarkData[0])
    }
}
