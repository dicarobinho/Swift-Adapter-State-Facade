//
//  Handlers.swift
//  Adapter
//
//  Created by Alex Farcasanu on 11.01.2024.
//

import Foundation

protocol Handler {

    var next: Handler? { get }

    func handle(_ request: Request) -> LocalizedError?
}

class BaseHandler: Handler {

    var next: Handler?

    init(with handler: Handler? = nil) {
        self.next = handler
    }

    func handle(_ request: Request) -> LocalizedError? {
        
        guard request.brand?.isEmpty == false else {
            return RequestError.emptyBrand
        }

        guard request.year?.isEmpty == false else {
            return RequestError.emptyYear
        }
        
        guard request.year?.isNumeric == true else {
            return RequestError.invalidYear
        }
        
        return next?.handle(request)
    }
}

class NakedBikesHandler: BaseHandler {

    override func handle(_ request: Request) -> LocalizedError? {
        return next?.handle(request)
    }
}

class SportBikesHandler: BaseHandler {

    override func handle(_ request: Request) -> LocalizedError? {
        
        guard request.sportExhaustBrand?.isEmpty == false else {
            return RequestError.emptySportExhaustBrand
        }

        return next?.handle(request)
    }
}
