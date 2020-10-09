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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct WatchLandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        WatchLandmarkDetail()
    }
}
