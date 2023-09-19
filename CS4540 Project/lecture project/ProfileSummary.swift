//
//  ProfileSummary.swift
//  lecture project
//
//  Created by Joseph Comeaux on 7/8/22.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text(profile.username)
                .bold()
                .font(.title)
            Text("Notifications: \(profile.prefersNotifications ? "On":"Off")")
            Text("Seasonal Photo: \(profile.seasonalPhoto.rawValue)")
            Text("Last Update Date:\(profile.updateDate)")
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
