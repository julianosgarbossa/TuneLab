//
//  PlaylistCardView.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import UIKit

enum PlaylistCardViewMode {
    case card
    case full
}

class PlaylistCardView: UIView {
    private var containerTopConstraint: NSLayoutConstraint?
    private var containerLeadingConstraint: NSLayoutConstraint?
    private var containerTrailingConstraint: NSLayoutConstraint?
    private var containerBottomConstraint: NSLayoutConstraint?

    private lazy var playlistCardContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 30
        view.clipsToBounds = true
        view.layer.shadowOpacity = 1
        view.layer.shadowOffset = CGSize(width: 0, height: -2)
        view.layer.shadowRadius = 20
        return view
    }()
    
    private lazy var playlistCoverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .black
        return imageView
    }()
    
    private lazy var playlistOverlayCardView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black.withAlphaComponent(0.6)
        return view
    }()
    
    private lazy var playlistCategoryBorderView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 25
        return view
    }()

    private lazy var playlistCategoryImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.backgroundColor = .black
        return imageView
    }()
    
    private lazy var addPlaylistCategoryImageButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.setBackgroundImage(UIImage(named: "plus"), for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    private lazy var playlistCategoryNameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.textColor = .white
        return label
    }()
    
    private lazy var playlistCategoryDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        label.textColor = .white
        return label
    }()
    
    private lazy var playlistTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 31, weight: .bold)
        label.textColor = .white
        label.textAlignment = .center
        return label
    }()
    
    private lazy var playlistLikeAndTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var playlistDescriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        label.textColor = .white
        label.textAlignment = .center
        label.numberOfLines = 0
        return label
    }()
    
    private lazy var playlistCardActionsView: PlaylistCardActionsView = {
        let playlistCardActionsView = PlaylistCardActionsView()
        playlistCardActionsView.translatesAutoresizingMaskIntoConstraints = false
        return playlistCardActionsView
    }()
    
    init(mode: PlaylistCardViewMode) {
        let frame = CGRect.zero
        super.init(frame: frame)
        addVisualElements()
        updateLayout(mode: mode)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addVisualElements() {
        addSubview(playlistCardContainerView)
        playlistCardContainerView.addSubview(playlistCoverImageView)
        playlistCardContainerView.addSubview(playlistOverlayCardView)
        playlistCardContainerView.addSubview(playlistCategoryBorderView)
        playlistCardContainerView.addSubview(playlistCategoryImageView)
        playlistCardContainerView.addSubview(addPlaylistCategoryImageButton)
        playlistCardContainerView.addSubview(playlistCategoryNameLabel)
        playlistCardContainerView.addSubview(playlistCategoryDateLabel)
        playlistCardContainerView.addSubview(playlistTitleLabel)
        playlistCardContainerView.addSubview(playlistLikeAndTimeLabel)
        playlistCardContainerView.addSubview(playlistDescriptionLabel)
        playlistCardContainerView.addSubview(playlistCardActionsView)
        
        configConstraints()
    }
    
    func updateLayout(mode: PlaylistCardViewMode) {
        switch mode {
        case .card:
            containerTopConstraint?.constant = 15
            containerLeadingConstraint?.constant = 30
            containerTrailingConstraint?.constant = -30
            containerBottomConstraint?.constant = -15
            playlistDescriptionLabel.isHidden = true
            playlistCardContainerView.layer.cornerRadius = 30
        case .full:
            containerTopConstraint?.constant = 0
            containerLeadingConstraint?.constant = 0
            containerTrailingConstraint?.constant = 0
            containerBottomConstraint?.constant = 0
            playlistCardContainerView.layer.cornerRadius = 0
            playlistDescriptionLabel.isHidden = false
        }
        playlistCardActionsView.updateLayout(mode: mode)
    }
    
    private func configConstraints() {
        containerTopConstraint = playlistCardContainerView.topAnchor.constraint(equalTo: topAnchor, constant: 15)
        containerTopConstraint?.isActive = true
        containerLeadingConstraint = playlistCardContainerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30)
        containerLeadingConstraint?.isActive = true
        containerTrailingConstraint = playlistCardContainerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30)
        containerTrailingConstraint?.isActive = true
        containerBottomConstraint = playlistCardContainerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15)
        containerBottomConstraint?.isActive = true
        
        NSLayoutConstraint.activate([
            playlistCoverImageView.topAnchor.constraint(equalTo: playlistCardContainerView.topAnchor),
            playlistCoverImageView.leadingAnchor.constraint(equalTo: playlistCardContainerView.leadingAnchor),
            playlistCoverImageView.trailingAnchor.constraint(equalTo: playlistCardContainerView.trailingAnchor),
            playlistCoverImageView.bottomAnchor.constraint(equalTo: playlistCardContainerView.bottomAnchor),
            
            playlistOverlayCardView.topAnchor.constraint(equalTo: playlistCardContainerView.topAnchor),
            playlistOverlayCardView.leadingAnchor.constraint(equalTo: playlistCardContainerView.leadingAnchor),
            playlistOverlayCardView.trailingAnchor.constraint(equalTo: playlistCardContainerView.trailingAnchor),
            playlistOverlayCardView.bottomAnchor.constraint(equalTo: playlistCardContainerView.bottomAnchor),
            
            playlistCategoryBorderView.topAnchor.constraint(equalTo: playlistCardContainerView.topAnchor, constant: 60),
            playlistCategoryBorderView.centerXAnchor.constraint(equalTo: playlistCardContainerView.centerXAnchor),
            playlistCategoryBorderView.widthAnchor.constraint(equalToConstant: 50),
            playlistCategoryBorderView.heightAnchor.constraint(equalToConstant: 50),
            
            playlistCategoryImageView.centerXAnchor.constraint(equalTo: playlistCategoryBorderView.centerXAnchor),
            playlistCategoryImageView.centerYAnchor.constraint(equalTo: playlistCategoryBorderView.centerYAnchor),
            playlistCategoryImageView.widthAnchor.constraint(equalToConstant: 40),
            playlistCategoryImageView.heightAnchor.constraint(equalToConstant: 40),
            
            addPlaylistCategoryImageButton.trailingAnchor.constraint(equalTo: playlistCategoryBorderView.trailingAnchor, constant: 4),
            addPlaylistCategoryImageButton.bottomAnchor.constraint(equalTo: playlistCategoryBorderView.bottomAnchor, constant: 4),
            addPlaylistCategoryImageButton.widthAnchor.constraint(equalToConstant: 20),
            addPlaylistCategoryImageButton.heightAnchor.constraint(equalToConstant: 20),
            
            playlistCategoryNameLabel.topAnchor.constraint(equalTo: playlistCategoryBorderView.bottomAnchor, constant: 10),
            playlistCategoryNameLabel.centerXAnchor.constraint(equalTo: playlistCardContainerView.centerXAnchor),
            
            playlistCategoryDateLabel.topAnchor.constraint(equalTo: playlistCategoryNameLabel.bottomAnchor, constant: 2),
            playlistCategoryDateLabel.centerXAnchor.constraint(equalTo: playlistCardContainerView.centerXAnchor),
            
            playlistTitleLabel.topAnchor.constraint(equalTo: playlistCategoryDateLabel.bottomAnchor, constant: 20),
            playlistTitleLabel.leadingAnchor.constraint(equalTo: playlistCardContainerView.leadingAnchor, constant: 20),
            playlistTitleLabel.trailingAnchor.constraint(equalTo: playlistCardContainerView.trailingAnchor, constant: -20),
            
            playlistLikeAndTimeLabel.topAnchor.constraint(equalTo: playlistTitleLabel.bottomAnchor, constant: 10),
            playlistLikeAndTimeLabel.centerXAnchor.constraint(equalTo: playlistCardContainerView.centerXAnchor),
            
            playlistDescriptionLabel.topAnchor.constraint(equalTo: playlistLikeAndTimeLabel.bottomAnchor, constant: 30),
            playlistDescriptionLabel.leadingAnchor.constraint(equalTo: playlistCardContainerView.leadingAnchor, constant: 40),
            playlistDescriptionLabel.trailingAnchor.constraint(equalTo: playlistCardContainerView.trailingAnchor, constant: -40),
            
            playlistCardActionsView.bottomAnchor.constraint(equalTo: playlistCardContainerView.bottomAnchor, constant: -20),
            playlistCardActionsView.leadingAnchor.constraint(equalTo: playlistCardContainerView.leadingAnchor, constant: 20),
            playlistCardActionsView.trailingAnchor.constraint(equalTo: playlistCardContainerView.trailingAnchor, constant: -20),
            playlistCardActionsView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    func setupView(playlist: Playlist) {
        playlistCoverImageView.image = UIImage(named: playlist.coverImage)
        playlistCategoryImageView.image = UIImage(named: playlist.categoryImage)
        playlistCategoryNameLabel.text = playlist.categoryName
        playlistCategoryDateLabel.text  = playlist.categoryDate
        playlistTitleLabel.text = playlist.title
        playlistLikeAndTimeLabel.attributedText = NSAttributedString.featureText(playlist.likeCount, playlist.duration)
        playlistDescriptionLabel.text = playlist.description
    }
}
