//
//  ApiServices.swift
//  iosGroup assignment
//
//  Created by Claire Ongley on 19/5/22.
//

import Foundation

class ApiService {
    var searchInput = "abc"
    let topRatedURL = "https://api.themoviedb.org/3/movie/top_rated?api_key=392edc2e9b59a6d9b11f639b3c2a0f26&language=en-US&page=1"
    let trendingURL = "https://api.themoviedb.org/3/trending/all/day?api_key=392edc2e9b59a6d9b11f639b3c2a0f26"
    let upcomingURL = "https://api.themoviedb.org/3/movie/upcoming?api_key=392edc2e9b59a6d9b11f639b3c2a0f26&language=en-US&page=1"
    let searchURL = "https://api.themoviedb.org/3/search/movie?api_key=392edc2e9b59a6d9b11f639b3c2a0f26&language=en-US&query=\(searchInput)&page=1&include_adult=false"
    let nowPlaying = "https://api.themoviedb.org/3/movie/now_playing?api_key=392edc2e9b59a6d9b11f639b3c2a0f26&language=en-US&page=1"
    
}
