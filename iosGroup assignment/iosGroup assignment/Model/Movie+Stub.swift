//
//  Movie+Stub.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 19/5/22.
//

import Foundation
//This extension refers to a preexisting JSON for debugging purposes.
//supposed to be used to preview views but as we were using interface builder it ended up not being as helpful



extension Movie {
    static var stubbedMovies: [Movie] {

        let response: MovieResponse? = try? Bundle.main.loadAndDecodeJSON(filename: "movie_list")
        return response!.results
    }
    static var stubbedMovie: Movie {
        stubbedMovies[0]
    }
}

extension Bundle {
    func loadAndDecodeJSON<D:Decodable>(filename:String) throws -> D? {
        guard let url = self.url(forResource: filename, withExtension: "json") else {
            return nil
        }
        let data = try Data(contentsOf: url)
        let jsonDecoder = Utils.jsonDecoder
        let decodedModel = try jsonDecoder.decode(D.self, from: data)
        return decodedModel
    }
}
