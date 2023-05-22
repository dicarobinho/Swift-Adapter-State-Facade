//
//  Adapter.swift
//  Adapter
//
//  Created by Alex Farcasanu on 10.05.2023.
//

import Foundation

class ScooterAdapter: Race {
    
    private var scooter: Scooter

    init(_ scooter: Scooter) {
        self.scooter = scooter
    }
    
    func doRace() -> String {
        scooter.increaseHP(value: 50)
        return scooter.doRace()
    }
}
