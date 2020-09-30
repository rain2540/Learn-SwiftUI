//
//  ProfileHost.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/30.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {

    @State var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            ProfileSummary(profile: draftProfile)
        })
        .padding()
    }

}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
