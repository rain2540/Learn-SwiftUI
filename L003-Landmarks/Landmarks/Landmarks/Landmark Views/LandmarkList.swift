//
//  LandmarkList.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/1.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct LandmarkList<DetailView: View>: View {

    @EnvironmentObject var userData: UserData

    let detailViewProducer: (Landmark) -> DetailView

    var body: some View {

            List {
                Toggle(isOn: $userData.showFavoritesOnly) {
                    Text("FavoriteOnly")
                }
                
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: self.detailViewProducer(landmark).environmentObject(self.userData)) {
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))

    }

}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 8", "iPhone 11 Pro"], id: \.self) { deviceName in
            NavigationView {
                LandmarkList()
                    .environmentObject(UserData())
                    .previewDevice(PreviewDevice(rawValue: deviceName))
                    .previewDisplayName(deviceName)
            }
        }
    }
}
