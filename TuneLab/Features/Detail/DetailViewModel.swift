//
//  DetailViewModel.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import Foundation

final class DetailViewModel {
    private var playlist: Playlist
    
    init(playlist: Playlist) {
        self.playlist = playlist
    }
    
    var loadCurrentPlaylist: Playlist {
        return playlist
    }
    
    var numberOfRowsInSection: Int {
        return playlist.tracks.count
    }
    
    var heightForRowAt: CGFloat {
        return 80
    }
    
    func loadCurrentTrack(index: Int) -> Track {
        return playlist.tracks[index]
    }
}
