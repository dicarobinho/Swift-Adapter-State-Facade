//
//  MotorcycleProtocol.swift
//  Adapter
//
//  Created by Alex Farcasanu on 15.05.2023.
//

import Foundation

protocol MotorcycleProtocol: AnyObject
{
    var speed: Int { get set }
    func setState(_ state: MotorcycleState)
    
    func accelerate() -> String
    func brake() -> String

    func getMovingState() -> MotorcycleState
    func getStoppedState() -> MotorcycleState
}
