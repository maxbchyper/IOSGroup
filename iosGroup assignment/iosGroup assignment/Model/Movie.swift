//
//  Movie.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 19/5/22.
//

import Foundation
struct MovieResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let id: Int
    let title: String
    let backdropPath: String?
    let posterPath: String?
    let overview: String
    let voteAverage: Double
    let voteCount: Int
    let runTime: Int?
}
