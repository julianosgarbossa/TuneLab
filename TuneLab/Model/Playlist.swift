//
//  Playlist.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import Foundation

struct Playlist {
    var categoryImage: String
    var categoryName: String
    var categoryDate: String
    var title: String
    var likeCount: String
    var duration: String
    var description: String
    var coverImage: String
    var tracks: [Track]
}

struct Track {
    var coverImage: String
    var title: String
    var artistName: String
}
