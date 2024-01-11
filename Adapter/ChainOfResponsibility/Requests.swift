//
//  Requests.swift
//  Adapter
//
//  Created by Alex Farcasanu on 11.01.2024.
//

import Foundation

protocol Request {

    var brand: String? { get }
    var year: String? { get }

    var sportExhaustBrand: String? { get }
}

extension Request {

    var brand: String? { return nil }
    var year: String? { return nil }

    var sportExhaustBrand: String? { return nil }
}

struct NakedBikesRequest: Request {

    var brand: String?
    var year: String?
}

struct SportBikesRequest: Request {

    var brand: String?
    var year: String?

    var sportExhaustBrand: String?
}
