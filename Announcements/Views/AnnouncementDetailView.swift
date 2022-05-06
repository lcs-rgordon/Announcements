//
//  AnnouncementDetailView.swift
//  Announcements
//
//  Created by Russell Gordon on 2022-04-27.
//

import SwiftUI

struct AnnouncementDetailView: View {
    
    // MARK: Stored properties
    let currentAnnouncement: Announcement
    
    // MARK: Computed properties
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {

                VStack(alignment: .leading, spacing: 5) {
                    
                    Text(currentAnnouncement.title)
                        .font(.title)
                        .bold()
                        .multilineTextAlignment(.leading)
                    
                    HStack {
                        Text("**Posted by:** \(currentAnnouncement.postedBy)")
                        Spacer()
                    }
                    .font(.caption)
                    
                    Text(currentAnnouncement.date)
                        .font(.caption)
                }
                
                RemoteImageView(fromURL: URL(string: currentAnnouncement.imageUrl)!)

                Text(currentAnnouncement.body)
            }
            .padding(.horizontal)
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct AnnouncementDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnnouncementDetailView(currentAnnouncement: testListOfAnnouncements[1])
        }
    }
}
