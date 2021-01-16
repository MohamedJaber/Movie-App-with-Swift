//
//  MovieService.swift
//  Movie App
//
//  Created by Mohamed Jaber on 16/01/2021.
//

import Foundation

protocol MovieService {
    
    func fetchMovies(from endpoint: Endpoint, params: [String: String]?, successHandler: @escaping (_ response: MoviesResponse) -> Void, errorHandler: @escaping(_ error: Error) -> Void)
    func fetchMovie(id: Int, successHandler: @escaping (_ response: Movie) -> Void, errorHandler: @escaping(_ error: Error) -> Void)
    func searchMovie(query: String, params: [String: String]?, successHandler: @escaping (_ response: MoviesResponse) -> Void, errorHandler: @escaping(_ error: Error) -> Void)
}


public enum Endpoint: String, CustomStringConvertible, CaseIterable {
    case topRated = "top_rated"
    case popular = "popular"
    case nowPlaying = "now_playing"
    case upcoming
    
    public var description: String {
        switch self {
        case .topRated: return "Top Rated"
        case .popular: return "Popular"
        case .nowPlaying: return "Now Playing"
        case .upcoming: return "Upcoming"
        }
    }
    
    public init?(index: Int) {
        switch index {
        case 0: self = .topRated
        case 1: self = .popular
        case 2: self = .nowPlaying
        case 3: self = .upcoming
        default: return nil
        }
    }
    
    public init?(description: String) {
        guard let first = Endpoint.allCases.first(where: { $0.description == description }) else {
            return nil
        }
        self = first
    }
    
}

public enum MovieError: Error {
    case apiError
    case invalidEndpoint
    case invalidResponse
    case noData
    case serializationError
}
