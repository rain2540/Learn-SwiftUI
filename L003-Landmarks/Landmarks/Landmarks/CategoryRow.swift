//
//  CategoryRow.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/30.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {

    var categoryName: String
    var items: [Landmark]

    var body: some View {
        VStack(alignment: .leading, content: {
            Text(self.categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack(alignment: .top, spacing: 0, content: {
                    ForEach(self.items) { landmark in
                        Text(landmark.name)
                    }
                })
            })
            .frame(height: 185)
        })
    }

}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue,
            items: Array(landmarkData.prefix(4))
        )
    }
}
