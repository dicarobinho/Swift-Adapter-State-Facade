//
//  Decorator.swift
//  Adapter
//
//  Created by Alex Farcasanu on 22.05.2023.
//

import Foundation

protocol Racing {
    func getHP() -> Double
}

final class RaceMotorycle: Racing {
    private let hp = 100.0
    
    func getHP() -> Double {
        return hp
    }
}

class ExhaustDecorator: Racing {
    private let racing: Racing
    
    init(racing: Racing) {
        self.racing = racing
    }
    
    func getHP() -> Double {
        return racing.getHP()
    }
}

//-----------------------------------------------------
class FinalExhaustDecorator: Racing {
    private let racing: Racing
    
    init(racing: Racing) {
        self.racing = racing
    }
    
    func getHP() -> Double {
        return racing.getHP() + 5.0
    }
}

class DecatExhaustDecorator: Racing {
    private let racing: Racing
    
    init(racing: Racing) {
        self.racing = racing
    }
    
    func getHP() -> Double {
        return racing.getHP() + 15.0
    }
    
    @IBAction func openInfo(_ sender: Any) {
    }
}

