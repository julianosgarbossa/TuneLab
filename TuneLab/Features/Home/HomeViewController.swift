//
//  HomeViewController.swift
//  TuneLab
//
//  Created by Juliano Sgarbossa on 02/10/26.
//

import UIKit

class HomeViewController: UIViewController {
    
    private var screen: HomeScreen?
    private let viewModel: HomeViewModel = HomeViewModel()
    
    override func loadView() {
        screen = HomeScreen()
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configNavigation()
        configProtocols()
    }
    
    private func configNavigation() {
        navigationController?.navigationBar.isHidden = true
    }
    
    private func configProtocols() {
        screen?.configTableViewProtocols(delegate: self, dataSource: self)
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Navegar para tela de detalhes")
    }
}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRowsInSection
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: PlaylistCardTableViewCell.identifier) as? PlaylistCardTableViewCell else { return UITableViewCell() }
        cell.setupCell(playlist: viewModel.loadCurrentPlaylist(index: indexPath.row))
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return viewModel.heightForRowAt
    }
}
