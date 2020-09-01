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
                LandmarkRow(landmark: landmark)
            }
            .navigationBarTitle(Text("Landmarks"))
        }

    }

}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
