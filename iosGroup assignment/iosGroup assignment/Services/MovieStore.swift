//
//  File.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 18/5/22.
//

import Foundation

class MovieStore: MovieService {
    
    static let shared = MovieStore()
    private init() {}
    
    private let apiKey = ""
    private let baseAPIURL = ""
    private let urlSession = URLSession.shared
    private let jsonDecoder = Utils.jsonDecoder
    
    func fetchMovies(from endpoint: MovieListEndpoint, completion: @escaping (Result<MovieResponse,MovieError>) -> ()){
    }
    
    func fetchMovie(id: Int, completion: @escaping (Result<Movie,MovieError>) -> ()){
        
    }

    func searchMovie(query: String, completion: @escaping (Result<MovieResponse,MovieError>) -> ()) {
        
    }
    private func loadURLAndDecode<D: Decodable>(url:URL, params: [String:String]? = nil, completion = @escaping (Result<D,MovieError>) -> (){
        
    }

}

