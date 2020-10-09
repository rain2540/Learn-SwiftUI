//
//  ProfileHost.swift
//  Landmarks
//
//  Created by RAIN on 2020/9/30.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {

    @Environment(\.editMode) var mode
    @EnvironmentObject var userData: UserData
    @State var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20, content: {
            HStack {
                if self.mode?.wrappedValue == .active {
                    Button("Cancel") {
                        self.draftProfile = self.userData.profile
                        self.mode?.animation().wrappedValue = .inactive
                    }
                }

                Spacer()

                EditButton()
            }
            if self.mode?.wrappedValue == .inactive {
                ProfileSummary(profile: userData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear(perform: {
                        self.draftProfile = self.userData.profile
                    })
                    .onDisappear(perform: {
                        self.userData.profile = self.draftProfile
                    })
            }
        })
        .padding()
    }

}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost().environmentObject(UserData())
    }
}
