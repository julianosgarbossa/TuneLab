//
//  PlaylistCardTableViewCell.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import UIKit

class PlaylistCardTableViewCell: UITableViewCell {
    
    static let identifier: String = String(describing: PlaylistCardTableViewCell.self)
    
    private lazy var screen: PlaylistCardTableViewCellScreen = {
        let screen = PlaylistCardTableViewCellScreen()
        screen.translatesAutoresizingMaskIntoConstraints = false
        return screen
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addVisualElements() {
        selectionStyle = .none
        
        contentView.addSubview(screen)
        
        configConstraints()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: contentView.topAnchor),
            screen.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
    
    func setupCell(playlist: Playlist) {
        screen.playlistCardView.setupView(playlist: playlist)
    }
}
