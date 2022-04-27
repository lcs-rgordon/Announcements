//
//  AnnouncementDetailView.swift
//  Announcements
//
//  Created by Russell Gordon on 2022-04-27.
//

import SwiftUI

struct AnnouncementDetailView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 30) {

                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        Text("**Posted by:** David Crispo")
                        Spacer()
                    }
                    .font(.caption)
                    
                    Text("4/27/2022")
                        .font(.caption)
                }
                
                RemoteImageView(fromURL: URL(string: "https://www.russellgordon.ca/lcs/2021-22/sheety-demo/airband.jpg")!)

                Text("Good morning, all houses should now have a time for an Airbands sound check in the theatre. \n\nSome important reminders:\n\n• The time slots are only 15 minutes, please make sure that you're there on time and you leave your bags/coats in the theatre lobby so we can get everyone through. \n\n• There are pieces of the set still in the theatre, please do not touch any of it.  \n\nIn the words of Martha Graham, \"Dance is the hidden language of the soul\" \n\nThanks everyone!")
            }
            .padding(.horizontal)
        }
        .navigationTitle("Airbands update 🎸")
    }
}

struct AnnouncementDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AnnouncementDetailView()
        }
    }
}
