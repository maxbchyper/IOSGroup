//
//  MovieService.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 19/5/22.
//  api and error stuff in here

import Foundation

protocol MovieService {
    func fetchMovies(from endpoint: MovieListEndpoint, completion: @escaping (Result<MovieResponse, MovieError>) ->())
    func fetchMovie(id:Int, completion: @escaping(Result<Movie, MovieError>) -> ())
    func searchMovie(query: String, completion: @escaping (Result<MovieResponse, MovieError>) -> ())
}

enum MovieListEndpoint: String, CaseIterable {
    case nowPlaying = "now_playing"
    case upcoming
    case topRated = "top_rated"
    case trending

    
    var description: String {
        switch self{
        case .nowPlaying: return "Now Playing"
        case .upcoming: return "Upcoming"
        case .topRated: return "Top Rated"
        case .trending: return "Trending"
        }
    }
}


enum MovieError: Error, CustomNSError {
    case apiError
    case invalidEndpoint
    case invalidResponse
    case noData
    case serialisationError
    
    var localisedDescription: String {
        switch self {
        case .apiError: return "Failed to fetch data"
        case .invalidEndpoint: return "Invalid Endpoint"
        case .invalidResponse: return "Invalid Response"
        case .noData: return "No Data"
        case .serialisationError: return "Failed to decode data"
        }
    }
    
    var errorUserInfo: [String:Any] {
        [NSLocalizedDescriptionKey:localisedDescription]
    }
}



