//
//  StoppedState.swift
//  Adapter
//
//  Created by Alex Farcasanu on 15.05.2023.
//

import Foundation

class StoppedState: MotorcycleState
{
    private weak var moto: MotorcycleProtocol!
    
    required init(_ moto: MotorcycleProtocol) {
        self.moto = moto
    }
    
    func accelerate() -> String? {
        self.moto.speed += 30
        self.moto.setState(self.moto.getMovingState())
        
        return "I start moving!\nspeed: \(self.moto?.speed ?? 0) km/h"
    }
    
    func brake() -> String? {
        return "I am stopped!\nspeed: 0 km/h"
    }
}
