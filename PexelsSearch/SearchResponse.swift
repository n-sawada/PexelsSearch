//
//  SearchResponse.swift
//  PexelsSearch
//
//  Created by Naoki_Sawada on 2021/05/02.
//

import Foundation

struct SearchResponse: Decodable {
    let totalResults: Int
    let nextPage: String
    let photos: [Photo]
    
    struct Photo: Decodable {
        let photographer: String
        let src: Src
        
        struct Src: Decodable {
            let large: String
            let small: String
        }
    }
}
