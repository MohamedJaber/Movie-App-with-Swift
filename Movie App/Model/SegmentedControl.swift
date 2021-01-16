//
//  SegmentedControl.swift
//  Movie App
//
//  Created by Mohamed Jaber on 16/01/2021.
//

import UIKit

extension UISegmentedControl {
    
    var endpoint: Endpoint {
        switch self.selectedSegmentIndex {
        case 0: return .topRated
        case 1: return .popular
        case 2: return .nowPlaying
        case 3: return .upcoming
        default: fatalError()
        }
    }
}
