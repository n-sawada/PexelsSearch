//
//  SearchRepository.swift
//  PexelsSearch
//
//  Created by Naoki_Sawada on 2021/05/02.
//

import Foundation
import Alamofire

struct SearchRepository {
    static let headers: HTTPHeaders = [
        .authorization(Constants.apiKey),
        .accept("application/json")]
    
    static func photos(query: String, completion: @escaping(Result<SearchResponse?, NSError>) -> Void) {
        AF.request("https://api.pexels.com/v1/search?" + "query=" + query + "&per_page=20",
                   headers: headers
        ).responseData { response in
            switch response.result {
            case .success(let data):
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase

                do {
                    let response = try decoder.decode(SearchResponse.self, from: data)
                    completion(Result.success(response))
                } catch {
                    completion(Result.failure(error as NSError))
                }
                
            case .failure(let error as NSError):
                print(error)
            }
        }
    }
}
