//
//  MovieViewViewModel.swift
//  Movie App
//
//  Created by Mohamed Jaber on 16/01/2021.
//

import Foundation

struct MovieViewViewModel {
    
    private var movie: Movie
    
    private static let dateFormatter: DateFormatter = {
        $0.dateStyle = .medium
        $0.timeStyle = .none
        return $0
    }(DateFormatter())
    
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    var title: String {
        return movie.title
    }
    
    var overview: String {
        return movie.overview
    }
    
    var genres: [MovieGenre]? {
        return movie.genres
    }
    
    var credits: MovieCreditResponse? {
        return movie.credits
    }
    
    var posterURL: URL {
        return movie.posterURL
    }
    
    var releaseDate: String {
        return MovieViewViewModel.dateFormatter.string(from: movie.releaseDate)
    }
    
    var rating: String {
        let rating = Int(movie.voteAverage)
        let ratingText = (0..<rating).reduce("") { (acc, _) -> String in
            return acc + "⭐️"
        }
        return ratingText
    }
    
}
