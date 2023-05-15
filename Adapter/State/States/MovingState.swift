//
//  MovingState.swift
//  Adapter
//
//  Created by Alex Farcasanu on 15.05.2023.
//

import Foundation

class MovingState: MotorcycleState
{
    private weak var moto: MotorcycleProtocol!
    
    required init(_ moto: MotorcycleProtocol) {
        self.moto = moto
    }
    
    func accelerate() -> String? {
        var stateMessage = "I am moving! \n"
        self.moto.speed += 30
        
        if self.moto.speed > 100 && self.moto.speed < 150 { stateMessage = "I am fast! \n"}
        if self.moto.speed >= 150 { stateMessage = "I am really fast!!! \n"}
        
        return "\(stateMessage)speed: \(self.moto.speed) km/h"
    }
    
    func brake() -> String? {
        self.moto.speed -= 50
        
        if self.moto.speed <= 0 {
            self.moto.speed = 0
            self.moto.setState(self.moto.getStoppedState())
            return "I am stopped!\nspeed: 0 km/h"
        }
        
        return "I am braking!\nspeed: \(self.moto?.speed ?? 0) km/h"
    }
}
