//
//  ProfileEditor.swift
//  Landmarks
//
//  Created by RAIN on 2020/10/9.
//  Copyright © 2020 Smartech. All rights reserved.
//

import SwiftUI

struct ProfileEditor: View {

    @Binding var profile: Profile

    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }

            Toggle(isOn: $profile.prefersNotifications, label: {
                Text("Enable Notifications")
            })
        }
    }

}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
