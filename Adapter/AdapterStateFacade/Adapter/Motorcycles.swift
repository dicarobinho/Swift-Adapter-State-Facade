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
    
    var numberOfBikes: Observable<Int>
    
    let HP = 100
    
    init(numberOfBikes: Int = 0) {
        self.numberOfBikes = Observable(value: numberOfBikes)
    }
    
    func doRace() -> String {
        return "I am a Naked Bike and I can race"
    }
    
    func addBikeToCart() {
        numberOfBikes.value = numberOfBikes.value + 1
    }
    
    func removeBikeFromCart() {
        numberOfBikes.value = numberOfBikes.value - 1
    }
}
