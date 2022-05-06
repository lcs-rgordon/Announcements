//
//  SaveAnnouncementButtonView.swift
//  Announcements
//
//  Created by Russell Gordon on 2022-05-05.
//

import SwiftUI

struct SaveAnnouncementButtonView: View {
    
    // MARK: Stored properties
    
    // The announcement being shown
    let announcement: Announcement
    
    // Has this announcement been saved?
    @Binding var isSaved: Bool
    
    // The list of saved announcements
    @Binding var savedAnnouncements: [Announcement]
    
    // MARK: Computed properties
    var body: some View {
        
        // Button to save this announcement
        HStack {
            SpinningStarView(active: $isSaved)
            
            Text(isSaved ? "Forget this\nannouncement" : "Remember\nthis announcement")
                .foregroundColor(.blue)
                .multilineTextAlignment(.leading)
                // Don't animate the change in text when the announcement is saved
                .animation(.none, value: isSaved)
        }
        .onTapGesture {
            addOrRemoveAnnouncementFromSavedList()
        }
       
    }
    
    // MARK: Functions
    func addOrRemoveAnnouncementFromSavedList() {
        
        // Is this announcement in the list of saved announcements?
        if isSaved == false {
            
            // OK then, add it to the list
            savedAnnouncements.append(announcement)
            
            // This ensures the state changes on SpinningStarView are animated
            withAnimation (
                Animation.easeInOut(duration: 0.5)
            ) {
                isSaved = true
            }
            
            // DEBUG: What's in the list now?
            print(dump(savedAnnouncements))
            
        } else {
            
            // Find where this song is in the list of announcements, then remove it
            // This iterates over the entire "savedAnnouncements" list, looking
            // for a match to the current announcement...
            savedAnnouncements.removeAll(where: { currentAnnouncementInList in
                currentAnnouncementInList.id == announcement.id
            })
            
            // This ensures the state changes on SpinningStarView are animated
            withAnimation (
                Animation.easeInOut(duration: 0.5)
            ) {
                isSaved = false
            }
            
            // DEBUG: What's in the list now?
            print(dump(savedAnnouncements))


        }
        
        
    }
    
}

struct SaveAnnouncementButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SaveAnnouncementButtonView(announcement: testAnnouncement,
                          isSaved: .constant(true),
                          savedAnnouncements: .constant([]))
    }
}
