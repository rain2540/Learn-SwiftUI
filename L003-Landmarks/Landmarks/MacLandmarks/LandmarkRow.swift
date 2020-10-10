//
//  LandmarkRow.swift
//  MacLandmarks
//
//  Created by RAIN on 2020/10/10.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {

    var landmark: Landmark

    var body: some View {
        HStack(alignment: .center, content: {
            landmark.image
                .resizable()
                .aspectRatio(1.0, contentMode: .fit)
                .frame(width: 32, height: 32)
                .fixedSize(horizontal: true, vertical: false)
                .cornerRadius(3.0)

            VStack(alignment: .leading, content: {
                Text(landmark.name)
                    .fontWeight(.bold)
                    .truncationMode(.tail)
                    .frame(minWidth: 20)

                Text(landmark.park)
                    .font(.caption)
                    .opacity(0.625)
                    .truncationMode(.middle)
            })
        })
    }

}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkRow(landmark: landmarkData[0])
    }
}
