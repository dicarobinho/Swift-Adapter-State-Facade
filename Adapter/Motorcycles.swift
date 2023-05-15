//
//  Motorcycles.swift
//  Adapter
//
//  Created by Alex Farcasanu on 10.05.2023.
//

import Foundation

protocol Race {
    func doRace() -> String
}

class SportBike: Race {
    
    let HP = 200
    
    func doRace() -> String {
        return "I am a Sport Bike and I can race"
    }
}

class NakedBike: Race {
    
    let HP = 100
    
    func doRace() -> String {
        return "I am a Naked Bike and I can race"
    }
}
