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
        Text("Profile for: \(draftProfile.username)")
    }

}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
