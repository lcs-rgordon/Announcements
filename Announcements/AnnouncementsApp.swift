//
//  AnnouncementsApp.swift
//  Announcements
//
//  Created by Russell Gordon on 2022-04-27.
//

import SwiftUI

@main
struct AnnouncementsApp: App {
    
    // Source of truth for the list of saved announcements
    @State var starred: [Announcement] = []

    var body: some Scene {
        WindowGroup {
            
            TabView {

                AnnouncementsListView(starred: $starred)
                    .tabItem {
                        Image(systemName: "person.wave.2")
                        Text("Announcements")
                    }
                
                SavedAnnouncementsListView(starred: $starred)
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Saved")
                    }
            }

        }
    }
}
