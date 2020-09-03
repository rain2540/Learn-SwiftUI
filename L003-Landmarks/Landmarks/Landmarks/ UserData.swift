//
//   UserData.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/3.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI
import Combine


final class UserData: ObservableObject {

    @Published var showFavoriteOnly = false
    @Published var landmarks = landmarkData

}
