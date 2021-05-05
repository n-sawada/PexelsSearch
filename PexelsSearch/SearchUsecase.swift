//
//  SearchUsecase.swift
//  PexelsSearch
//
//  Created by Naoki_Sawada on 2021/05/03.
//

import Foundation

protocol SearchUsecaseProtocol {
    func fetchPhotos(query: String)
}

protocol SearchOputput: class {
    func didFetchPhotos(_ respose: SearchResponse?)
    func didFailFetching(with error: Error)
}

struct SearchUsecase {

    weak var output: SearchOputput?

    init(output: SearchOputput) {
        self.output = output
    }
}

extension SearchUsecase: SearchUsecaseProtocol {
    func fetchPhotos(query: String) {
        SearchRepository.photos(query: query) { (result) in
            switch result {
            case .success(let response):
                self.output?.didFetchPhotos(response)
            case .failure(let error):
                self.output?.didFailFetching(with: error)
            }
        }
    }
}
