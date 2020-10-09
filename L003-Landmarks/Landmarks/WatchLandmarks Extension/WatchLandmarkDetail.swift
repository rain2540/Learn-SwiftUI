//
//  WatchLandmarkDetail.swift
//  WatchLandmarks Extension
//
//  Created by RAIN on 2020/10/9.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct WatchLandmarkDetail: View {
    
    @EnvironmentObject var userData: UserData
    var landmark: Landmark

    var landmarkIndex: Int {
        userData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        CircleImage(image: self.landmark.image.resizable())
            .scaledToFill()
    }
}

struct WatchLandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        return WatchLandmarkDetail(landmark: userData.landmarks[0])
            .environmentObject(userData)
    }
}
