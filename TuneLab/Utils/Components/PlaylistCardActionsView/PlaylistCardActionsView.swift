//
//  PlaylistCardActionsView.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import UIKit

class PlaylistCardActionsView: UIView {

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    private lazy var downloadView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var notInterestedView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var playView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var likeView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var moreView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var downloadButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white.withAlphaComponent(0.3)
        button.layer.cornerRadius = 22.5
        button.setBackgroundImage(UIImage(named: "download")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.clipsToBounds = true
        return button
    }()
    
    private lazy var notInterestedButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white.withAlphaComponent(0.3)
        button.layer.cornerRadius = 22.5
        button.setBackgroundImage(UIImage(named: "restrict")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.clipsToBounds = true
        return button
    }()
    
    private lazy var playButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white
        button.layer.cornerRadius = 35
        button.setBackgroundImage(UIImage(named: "play")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .black
        button.clipsToBounds = true
        return button
    }()
    
    private lazy var likeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white.withAlphaComponent(0.3)
        button.layer.cornerRadius = 22.5
        button.setBackgroundImage(UIImage(named: "like")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.clipsToBounds = true
        return button
    }()
    
    private lazy var moreButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white.withAlphaComponent(0.3)
        button.layer.cornerRadius = 22.5
        button.setBackgroundImage(UIImage(named: "more")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.clipsToBounds = true
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
        addSubview(stackView)
        stackView.addArrangedSubview(notInterestedView)
        stackView.addArrangedSubview(playView)
        stackView.addArrangedSubview(likeView)
        
        downloadView.addSubview(downloadButton)
        notInterestedView.addSubview(notInterestedButton)
        playView.addSubview(playButton)
        likeView.addSubview(likeButton)
        moreView.addSubview(moreButton)
        
        configConstraints()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            downloadButton.centerXAnchor.constraint(equalTo: downloadView.centerXAnchor),
            downloadButton.centerYAnchor.constraint(equalTo: downloadView.centerYAnchor),
            downloadButton.widthAnchor.constraint(equalToConstant: 45),
            downloadButton.heightAnchor.constraint(equalToConstant: 45),
            
            notInterestedButton.centerXAnchor.constraint(equalTo: notInterestedView.centerXAnchor),
            notInterestedButton.centerYAnchor.constraint(equalTo: notInterestedView.centerYAnchor),
            notInterestedButton.widthAnchor.constraint(equalToConstant: 45),
            notInterestedButton.heightAnchor.constraint(equalToConstant: 45),
            
            playButton.centerXAnchor.constraint(equalTo: playView.centerXAnchor),
            playButton.centerYAnchor.constraint(equalTo: playView.centerYAnchor),
            playButton.widthAnchor.constraint(equalToConstant: 70),
            playButton.heightAnchor.constraint(equalToConstant: 70),
            
            likeButton.centerXAnchor.constraint(equalTo: likeView.centerXAnchor),
            likeButton.centerYAnchor.constraint(equalTo: likeView.centerYAnchor),
            likeButton.widthAnchor.constraint(equalToConstant: 45),
            likeButton.heightAnchor.constraint(equalToConstant: 45),
            
            moreButton.centerXAnchor.constraint(equalTo: moreView.centerXAnchor),
            moreButton.centerYAnchor.constraint(equalTo: moreView.centerYAnchor),
            moreButton.widthAnchor.constraint(equalToConstant: 45),
            moreButton.heightAnchor.constraint(equalToConstant: 45),
        ])
    }
    
    func updateLayout(mode: PlaylistCardViewMode) {
        switch mode {
        case .card:
            downloadView.isHidden = true
            moreView.isHidden = true
            stackView.removeArrangedSubview(downloadView)
            stackView.removeArrangedSubview(moreView)
        case .full:
            downloadView.isHidden = false
            moreView.isHidden = false
            stackView.addArrangedSubview(downloadView)
            stackView.addArrangedSubview(notInterestedView)
            stackView.addArrangedSubview(playView)
            stackView.addArrangedSubview(likeView)
            stackView.addArrangedSubview(moreView)
        }
    }
}
