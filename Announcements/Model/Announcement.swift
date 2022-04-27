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
