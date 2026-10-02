//
//  TrackCardTableViewCell.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import UIKit

class TrackCardTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: TrackCardTableViewCell.self)
    
    private lazy var screen: TrackCardTableViewCellScreen = {
        let screen = TrackCardTableViewCellScreen()
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
        contentView.addSubview(screen)
        
        configConstraints()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: contentView.topAnchor),
            screen.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
        ])
    }
    
    func setupCell(track: Track) {
        screen.trackCoverImageView.image = UIImage(named: track.coverImage)
        screen.trackTitleLabel.text = track.title
        screen.trackArtistNameLabel.text = track.artistName
    }
}
