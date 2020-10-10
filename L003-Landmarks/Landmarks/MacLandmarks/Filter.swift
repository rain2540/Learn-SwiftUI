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
    @Binding var filter: FilterType

    var body: some View {
        HStack {
            Picker(selection: $filter, label: EmptyView()) {
                ForEach(FilterType.allCases) { choice in
                    Text(choice.name).tag(choice)
                }
            }

            Spacer()

            Toggle(isOn: $userData.showFavoritesOnly) {
                Text("Favorites Only")
            }
        }
    }

}


struct Filter_Previews: PreviewProvider {
    static var previews: some View {
        Filter(filter: .constant(.all))
            .environmentObject(UserData())
    }
}


// MARK: - 

struct FilterType: CaseIterable, Hashable, Identifiable {

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
        return [.all] + Landmark.Category.allCases.map(FilterType.init)
    }

    var id: FilterType {
        return self
    }

}
