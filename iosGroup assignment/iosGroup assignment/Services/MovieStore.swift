//
//  MovieStore.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 19/5/22.
//

import Foundation

class MovieStore: MovieService {
    static let shared = MovieStore()
    private init() {}
    
    private let apiKey = "392edc2e9b59a6d9b11f639b3c2a0f26"
    private let baseAPIURL = "https://api.themoviedb.org/3"
    private let urlSession = URLSession.shared
    
    private let jsonDecoder = Utils.jsonDecoder
    
    func fetchMovies(from endpoint: MovieListEndpoint, completion: @escaping (Result<MovieResponse, MovieError>) -> ()) {
        <#code#>
    }
    
    func fetchMovie(id: Int, completion: @escaping (Result<Movie, MovieError>) -> ()) {
        <#code#>
    }
    
    func searchMovie(query: String) {
        <#code#>
    }
    
    private func loadURLAndDecode<D:Decodable>(url: URL, params:[String:String]? = nil, completion: @escaping (Result<D,MovieError>) -> ()){
        guard var urlComponents = URLComponents(url:url, resolvingAgainstBaseURL: false) else {
            completion(.failure(apiError))
        }
    }
    
    
}
