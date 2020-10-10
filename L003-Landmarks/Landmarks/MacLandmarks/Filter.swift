//
//  Filter.swift
//  MacLandmarks
//
//  Created by RAIN on 2020/10/10.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct Filter: View {

    @EnvironmentObject private var userData: UserData

    var body: some View {
        HStack {
            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites Only")
            }
        }
    }

}


struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter()
            .environmentObject(UserData())
    }
}


struct FilterType: CaseIterable, Hashable {

    var name: String
    var category: Landmark.Category?

    init(_ category: Landmark.Category) {
        self.name = category.rawValue
        self.category = category
    }

    init(name: String) {
        self.name = name
        self.category = nil
    }

    static let all = FilterType(name: "All")

    static var allCases: [FilterType] {
        return [.all] + Landmark.Category.allCases.map { FilterType(name: $0.rawValue) }
    }

}
