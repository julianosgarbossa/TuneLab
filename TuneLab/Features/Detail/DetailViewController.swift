//
//  DetailViewController.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import UIKit

class DetailViewController: UIViewController {
    
    private var screen: DetailScreen?
    private let viewModel: DetailViewModel

    
    init(playlist: Playlist) {
        viewModel = DetailViewModel(playlist: playlist)
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        screen = DetailScreen()
        view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configProtocols()
        configCustomView()
        
    }
    
    private func configProtocols() {
        screen?.delegate(delegate: self)
        screen?.configTableViewProtocols(delegate: self, dataSource: self)
        screen?.configScrollViewProtocol(delegate: self)
    }
    
    private func configCustomView() {
        screen?.playlistCardView.setupView(playlist: viewModel.loadCurrentPlaylist)
    }
}

extension DetailViewController: DetailScreenDelegate {
    func tappedCloseButton() {
        navigationController?.popViewController(animated: true)
    }
}

extension DetailViewController: UITableViewDelegate {

}

extension DetailViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TrackCardTableViewCell.identifier, for: indexPath) as? TrackCardTableViewCell else { return UITableViewCell() }
        cell.setupCell(track: viewModel.loadCurrentTrack(index: indexPath.row))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}

extension DetailViewController: UIScrollViewDelegate {

}
