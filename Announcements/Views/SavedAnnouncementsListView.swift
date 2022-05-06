//
//  SavedAnnouncementsListView.swift
//  Announcements
//
//  Created by Russell Gordon on 2021-02-21.
//

import SwiftUI

struct SavedAnnouncementsListView: View {
    
    // MARK: Stored properties
    
    // Derived value; a reference to the list of announcements that are starred
    @Binding var starred: [Announcement]
    
    // MARK: Computed properties
    var body: some View {
        
        NavigationView {
            
            VStack {
                // Show message if no starred announcements
                if starred.isEmpty {

                    Spacer()
                    
                    Text("No saved announcements yet")
                        .font(.title)
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Spacer()

                } else {

                    // Show list of saved announcements
                    List(starred) { currentListItem in

                        NavigationLink(destination: {
                            AnnouncementDetailView(currentAnnouncement: currentListItem,
                                                   isStarred: true,
                                                   starred: $starred)
                        }, label: {
                            ListItemView(currentAnnouncement: currentListItem)
                        })
                        
                    }
                    
                }
            }
            .navigationTitle("Saved")
            
        }
        
    }
}

struct SavedAnnouncementsListView_Previews: PreviewProvider {
    static var previews: some View {
        SavedAnnouncementsListView(starred: .constant([testAnnouncement]))
    }
}
