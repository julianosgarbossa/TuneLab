//
//  PlaylistCardTableViewCellScreen.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import UIKit

class PlaylistCardTableViewCellScreen: UIView {

    lazy var playlistCardView: PlaylistCardView = {
        let playlistCardView = PlaylistCardView(mode: .card)
        playlistCardView.translatesAutoresizingMaskIntoConstraints = false
        return playlistCardView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addVisualElements() {
        addSubview(playlistCardView)
        
        configConstraints()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            playlistCardView.topAnchor.constraint(equalTo: topAnchor),
            playlistCardView.leadingAnchor.constraint(equalTo: leadingAnchor),
            playlistCardView.trailingAnchor.constraint(equalTo: trailingAnchor),
            playlistCardView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
