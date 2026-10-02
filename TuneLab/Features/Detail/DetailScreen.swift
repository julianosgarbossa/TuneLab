//
//  DetailScreen.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import UIKit

protocol DetailScreenDelegate: AnyObject {
    func tappedCloseButton()
}

class DetailScreen: UIView {
    
    private weak var delegate: DetailScreenDelegate?
    func delegate(delegate: DetailScreenDelegate) {
        self.delegate = delegate
    }
    
    private lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        return scrollView
    }()
    
    lazy var playlistCardView: PlaylistCardView = {
        let playlistCardView = PlaylistCardView(mode: .full)
        playlistCardView.translatesAutoresizingMaskIntoConstraints = false
        return playlistCardView
    }()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.showsVerticalScrollIndicator = false
        tableView.isScrollEnabled = false
        tableView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
        tableView.contentInsetAdjustmentBehavior = .never
        tableView.register(TrackCardTableViewCell.self, forCellReuseIdentifier: TrackCardTableViewCell.identifier)
        return tableView
    }()
    
    private lazy var closeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .white.withAlphaComponent(0.3)
        button.layer.cornerRadius = 15
        button.setBackgroundImage(UIImage(named: "back")?.withRenderingMode(.alwaysTemplate), for: .normal)
        button.tintColor = .white
        button.addTarget(self, action: #selector(tappedCloseButton), for: .touchUpInside)
        return button
    }()

    @objc
    private func tappedCloseButton(_ sender: UIButton) {
        delegate?.tappedCloseButton()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addVisualElements()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func addVisualElements() {
        backgroundColor = .white

        addSubview(scrollView)
        addSubview(closeButton)
        scrollView.addSubview(playlistCardView)
        scrollView.addSubview(tableView)

        configConstraints()
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            closeButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            closeButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            closeButton.widthAnchor.constraint(equalToConstant: 30),
            closeButton.heightAnchor.constraint(equalToConstant: 30),

            playlistCardView.topAnchor.constraint(equalTo: topAnchor),
            playlistCardView.leadingAnchor.constraint(equalTo: leadingAnchor),
            playlistCardView.trailingAnchor.constraint(equalTo: trailingAnchor),
            playlistCardView.heightAnchor.constraint(equalToConstant: 500),

            tableView.topAnchor.constraint(equalTo: playlistCardView.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    func configTableViewProtocols(delegate: UITableViewDelegate, dataSource: UITableViewDataSource) {
        tableView.delegate = delegate
        tableView.dataSource = dataSource
    }
    
    func configScrollViewProtocol(delegate: UIScrollViewDelegate) {
        scrollView.delegate = delegate
    }
}
