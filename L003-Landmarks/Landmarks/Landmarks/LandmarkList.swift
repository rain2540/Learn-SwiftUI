//
//  LandmarkList.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/1.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {

    @EnvironmentObject var userData: UserData
    //@State var showFavoritesOnly = true

    var body: some View {

        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("FavoriteOnly")
                }
                
                ForEach(landmarkData) { landmark in
                    if !self.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
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
            .environmentObject(UserData())
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
