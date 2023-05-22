//
//  Adaptee.swift
//  Adapter
//
//  Created by Alex Farcasanu on 11.05.2023.
//

import Foundation

class Scooter {
    
    var HP = 10
    
    func doRace() -> String {
        if HP <= 10 {
           return "Need more HP for race"
        } else {
            return "I am a scooter with a boosted engine and I can race now!"
        }
    }
    
    func increaseHP(value: Int) {
        HP = HP + value
    }
}
