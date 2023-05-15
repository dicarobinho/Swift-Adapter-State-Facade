//
//  MotorcycleState.swift
//  Adapter
//
//  Created by Alex Farcasanu on 15.05.2023.
//

import Foundation

protocol MotorcycleState
{
    init(_ moto: MotorcycleProtocol)
    
    func accelerate() -> String?
    func brake() -> String?
}
