//
//  AnnouncementsListView.swift
//  Announcements
//
//  Created by Russell Gordon on 2022-04-27.
//

import SwiftUI

struct AnnouncementsListView: View {
    var body: some View {
        List {
            
            VStack(alignment: .leading) {
                Text("Airbands update 🎸")
                    .font(.headline)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("**Posted by:** David Crispo")
                        Spacer()
                    }
                    .font(.caption)
                    
                    Text("4/27/2022")
                        .font(.caption)
                }
            }
            
            VStack(alignment: .leading) {
                Text("SIC Voting Extended 🗳")
                    .font(.headline)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("**Posted by:** Mr. Pete O'Grady")
                        Spacer()
                    }
                    .font(.caption)
                    
                    Text("4/26/2022")
                        .font(.caption)
                }
            }
            
        }
        .navigationTitle("Announcements 📢")
    }
}

struct AnnouncementsListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnnouncementsListView()
        }
    }
}
