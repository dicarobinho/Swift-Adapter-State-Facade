//
//  RequestErrors.swift
//  Adapter
//
//  Created by Alex Farcasanu on 11.01.2024.
//

import Foundation

enum RequestError: LocalizedError {
    
    case emptyBrand
    case emptyYear
    case invalidYear
    
    case emptySportExhaustBrand

    var errorDescription: String? {
        switch self {
        case .emptyBrand:
            return "Brand is empty"
        case .emptyYear:
            return "Year is empty"
        case .invalidYear:
            return "Year is invalid"
        case .emptySportExhaustBrand:
            return "Sport Exhaust Brand is empty"
        }
    }
}
