//
//  StarredButtonView.swift
//  Announcements
//
//  Created by Russell Gordon on 2022-05-05.
//

import SwiftUI

struct StarredButtonView: View {
    
    // MARK: Stored properties
    
    // The announcement being shown
    let announcement: Announcement
    
    // Is this announcement starred?
    @Binding var isStarred: Bool
    
    // The list of starred announcements
    @Binding var starred: [Announcement]
    
    // MARK: Computed properties
    var body: some View {
        
        // Things to remember button (star)
        HStack {
            SpinningStarView(active: $isStarred)
            
            Text(isStarred ? "Forget this\nannouncement" : "Remember\nthis announcement")
                .foregroundColor(.blue)
                .multilineTextAlignment(.leading)
                // Don't animate the change in text when the announcement is starred
                .animation(.none, value: isStarred)
        }
        .onTapGesture {
            addOrRemoveAnnouncementFromStarredList()
        }
       
    }
    
    // MARK: Functions
    func addOrRemoveAnnouncementFromStarredList() {
        
        // Is this announcement in the starred list?
        if isStarred == false {
            
            // OK then, add it to the list
            starred.append(announcement)
            
            // This ensures the state changes on SpinningStarView are animated
            withAnimation (
                Animation.easeInOut(duration: 0.5)
            ) {
                isStarred = true
            }
            
            // What's in the list now?
            print(dump(starred))
            
        } else {
            
            // Find where this song is in the list of announcements, then remove it
            // This iterates over the entire "starred" list, looking
            // for a match to the current announcement...
            starred.removeAll(where: { currentAnnouncementInList in
                currentAnnouncementInList.id == announcement.id
            })
            
            // This ensures the state changes on SpinningStarView are animated
            withAnimation (
                Animation.easeInOut(duration: 0.5)
            ) {
                isStarred = false
            }

        }
        
        
    }
    
}

struct StarredButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StarredButtonView(announcement: testAnnouncement,
                          isStarred: .constant(true),
                          starred: .constant([]))
    }
}
