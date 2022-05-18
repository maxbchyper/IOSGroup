//
//  Movies.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 18/5/22.
//

import Foundation
struct Movie: Decodable {
    let results : [Movie]
}

struct MovieResponse: Decodable {
    let id:Int
    let title: String
    let backdropPath: String?
    let posterPath: String?
    let overview: String
    let voteAverage: Double
    let voteCount: Int
    let runTime: Int?
}
