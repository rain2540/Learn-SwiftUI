//
//  LandmarkList.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/1.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {

    var body: some View {

        NavigationView {
            List(landmarkData) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }

    }

}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 11 Pro"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
