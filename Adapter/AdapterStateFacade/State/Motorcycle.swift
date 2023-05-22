//
//  Motorcycle.swift
//  Adapter
//
//  Created by Alex Farcasanu on 15.05.2023.
//

import Foundation

class Motorcycle: MotorcycleProtocol
{
    public var speed: Int = 0
    
    private var state: MotorcycleState?
    
    init() {
        self.state = StoppedState(self)
    }
    
    func setState(_ state: MotorcycleState) {
        self.state = state
    }
    
    func accelerate() -> String {
        return state?.accelerate() ?? ""
    }
    
    func brake() -> String {
        return state?.brake() ?? ""
    }

    func getMovingState() -> MotorcycleState {
        return MovingState(self)
    }
    
    func getStoppedState() -> MotorcycleState {
        return StoppedState(self)
    }
}
