//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by RAIN on 2020/10/9.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}
