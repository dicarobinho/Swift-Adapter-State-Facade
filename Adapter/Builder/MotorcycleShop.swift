//
//  MotorcycleShop.swift
//  Adapter
//
//  Created by Alex Farcasanu on 12.06.2023.
//

import Foundation

public class MotorcycleShop {
    
    public func offRoadMotorcycle(using builder: FinishedMotorcycleBuilder) -> FinishedMotorcycle {
        builder.setWheels(.offRoad)
        builder.setEngine(.twoStroke)
        builder.setExhaust(.leovince)
        builder.addColor([.orange])
        return builder.build()
    }
    
    public func racingMotorcycle(using builder: FinishedMotorcycleBuilder) -> FinishedMotorcycle {
        builder.setWheels(.racing)
        builder.setEngine(.fourStroke)
        builder.setExhaust(.akrapovic)
        builder.addColor([.black, .red])
        return builder.build()
    }
}
