//
//  LandmarkList.swift
//  MacLandmarks
//
//  Created by RAIN on 2020/10/10.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {

    @EnvironmentObject private var userData: UserData

    var body: some View {
        List {
            ForEach(userData.landmarks) { landmark in
                LandmarkRow(landmark: landmark)
            }
        }
    }

}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(UserData())
    }
}
