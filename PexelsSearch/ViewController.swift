//
//  ViewController.swift
//  PexelsSearch
//
//  Created by Naoki_Sawada on 2021/05/02.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var collectionView: UICollectionView!
    
    private var searchBar = UISearchBar()

    override func viewDidLoad() {
        super.viewDidLoad()

        searchBar.delegate = self
        searchBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        navigationItem.titleView = searchBar
        
        collectionView.register(UINib(nibName: String(describing: PexelCell.self), bundle: nil), forCellWithReuseIdentifier: String(describing: PexelCell.self))
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: PexelCell.self), for: indexPath) as! PexelCell
        cell.configure()
        return cell
    }
}

// MARK: UISearchBarDelegate
extension ViewController: UISearchBarDelegate {

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        guard let searchText = self.searchBar.text, !searchText.allSatisfy({ $0.isWhitespace }) else {
            return
        }

        searchBar.resignFirstResponder()
        searchBar.setShowsCancelButton(false, animated: true)
    }

    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
        searchBar.setShowsCancelButton(true, animated: true)
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        // TODO: API start
        
        guard searchText == "" else { return }

        searchBar.setShowsCancelButton(true, animated: true)
    }

    func searchBar(_ searchBar: UISearchBar, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        guard let searchBarText = searchBar.text else { return false }
        if searchBarText.isEmpty && text.allSatisfy({ $0.isWhitespace }) {
            // 検索バーで何も入力されていないとき、スペース入力させない制御を行う
            return false
        }
        return true
    }

    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        cancelButtonTapped()
    }

    private func cancelButtonTapped() {
        searchBar.setShowsCancelButton(false, animated: true)
        searchBar.resignFirstResponder()
    }
}

