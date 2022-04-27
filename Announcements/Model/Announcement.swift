//
//  Announcement.swift
//  Announcements
//
//  Created by Russell Gordon on 2022-04-27.
//

import Foundation

// Matches structure of a single announcement, as provided here:
// https://www.russellgordon.ca/lcs/2021-22/sheety-demo/announcement.json
struct Announcement {
    let postedBy: String
    let date: String
    let title: String
    let body: String
    let imageUrl: String
    let id: Int
}

let testAnnouncement = Announcement(postedBy: "David Crispo",
                                    date: "4/27/2022",
                                    title: "Airbands update 🎸",
                                    body: "Good morning, all houses should now have a time for an Airbands sound check in the theatre. \n\nSome important reminders:\n\n• The time slots are only 15 minutes, please make sure that you're there on time and you leave your bags/coats in the theatre lobby so we can get everyone through. \n\n• There are pieces of the set still in the theatre, please do not touch any of it.  \n\nIn the words of Martha Graham, \"Dance is the hidden language of the soul\" \n\nThanks everyone!",
                                    imageUrl: "https://www.russellgordon.ca/lcs/2021-22/sheety-demo/airband.jpg",
                                    id: 2)

let testListOfAnnouncements = [
    
    Announcement(postedBy: "David Crispo",
                 date: "4/27/2022",
                 title: "Airbands update 🎸",
                 body: "Good morning, all houses should now have a time for an Airbands sound check in the theatre. \n\nSome important reminders:\n\n• The time slots are only 15 minutes, please make sure that you're there on time and you leave your bags/coats in the theatre lobby so we can get everyone through. \n\n• There are pieces of the set still in the theatre, please do not touch any of it.  \n\nIn the words of Martha Graham, \"Dance is the hidden language of the soul\" \n\nThanks everyone!",
                 imageUrl: "https://www.russellgordon.ca/lcs/2021-22/sheety-demo/airband.jpg",
                 id: 2)
    
    ,
    
    Announcement(postedBy: "Mr. Pete O'Grady",
                 date: "4/26/2022",
                 title: "SIC Voting Extended 🗳",
                 body: "Good morning.\n\nDue to the fire alarm, the ballot for this morning's voting will stay open until 1:00 PM for anyone who did not get the chance to vote.\n\nYou can access the ballot through your advising group.\n\nThank you.\n\nOG",
                 imageUrl: "https://www.russellgordon.ca/lcs/2021-22/sheety-demo/voting.jpg",
                 id: 2)
    
]
