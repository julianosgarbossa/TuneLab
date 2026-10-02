//
//  TrackCardTableViewCellScreen.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import UIKit

class TrackCardTableViewCellScreen: UIView {

    lazy var trackCoverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var trackTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    lazy var trackArtistNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textColor = .lightGray
        return label
    }()
    
    private lazy var likeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: "love")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .lightGray
        return button
    }()
    
    private lazy var moreButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: "more")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .lightGray
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addVisualElements()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addVisualElements() {
        addSubview(trackCoverImageView)
        addSubview(trackTitleLabel)
        addSubview(trackArtistNameLabel)
        addSubview(likeButton)
        addSubview(moreButton)
        
        configConstraints()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            trackCoverImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            trackCoverImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            trackCoverImageView.widthAnchor.constraint(equalToConstant: 60),
            trackCoverImageView.heightAnchor.constraint(equalToConstant: 60),
            
            trackTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 18),
            trackTitleLabel.leadingAnchor.constraint(equalTo: trackCoverImageView.trailingAnchor, constant: 15),
            trackTitleLabel.trailingAnchor.constraint(equalTo: likeButton.leadingAnchor, constant: -10),
            
            trackArtistNameLabel.topAnchor.constraint(equalTo: trackTitleLabel.bottomAnchor, constant: 4),
            trackArtistNameLabel.leadingAnchor.constraint(equalTo: trackCoverImageView.trailingAnchor, constant: 15),
            trackArtistNameLabel.trailingAnchor.constraint(equalTo: likeButton.leadingAnchor, constant: -10),
            
            moreButton.centerYAnchor.constraint(equalTo: trackCoverImageView.centerYAnchor),
            moreButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            moreButton.widthAnchor.constraint(equalToConstant: 35),
            moreButton.heightAnchor.constraint(equalToConstant: 35),
            
            likeButton.centerYAnchor.constraint(equalTo: trackCoverImageView.centerYAnchor),
            likeButton.trailingAnchor.constraint(equalTo: moreButton.leadingAnchor, constant: -15),
            likeButton.widthAnchor.constraint(equalToConstant: 35),
            likeButton.heightAnchor.constraint(equalToConstant: 35),
        ])
    }
}
