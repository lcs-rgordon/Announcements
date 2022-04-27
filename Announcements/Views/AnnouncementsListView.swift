//
//  AnnouncementsListView.swift
//  Announcements
//
//  Created by Russell Gordon on 2022-04-27.
//

import SwiftUI

struct AnnouncementsListView: View {
    
    // MARK: Stored properties
    let announcementsToShow: [Announcement]
    
    // MARK: Computed properties
    var body: some View {
        List {

            // First announcement
            ListItemView(currentAnnouncement: announcementsToShow[0])
            
            // Second announcement
            ListItemView(currentAnnouncement: announcementsToShow[1])
            
        }
        .navigationTitle("Announcements 📢")
    }
}

struct AnnouncementsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnnouncementsListView(announcementsToShow: testListOfAnnouncements)
        }
    }
}
