//
//  MovieCell.swift
//  Movie App
//
//  Created by Mohamed Jaber on 16/01/2021.
//

import UIKit
import Kingfisher

class MovieCell: UITableViewCell {

    @IBOutlet weak var castLabel: UILabel!
    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var genre: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overviewLabel: UILabel!
    @IBOutlet weak var releaseDateLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    func configure(viewModel: MovieViewViewModel) {
        titleLabel.text = viewModel.title
        overviewLabel.text = viewModel.overview
        releaseDateLabel.text = viewModel.releaseDate
        ratingLabel.text = viewModel.rating
        genre.text = "genre: \(viewModel.genres?[0].name ?? "Action")"
        castLabel.text = "cast: \(viewModel.credits?.cast[3].name ?? "Dwayne Johnson")"
        posterImageView.kf.setImage(with: viewModel.posterURL)
    }
    
}
