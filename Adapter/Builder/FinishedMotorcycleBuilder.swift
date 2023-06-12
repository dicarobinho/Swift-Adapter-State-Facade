//
//  FinishedMotorcycleBuilder.swift
//  Adapter
//
//  Created by Alex Farcasanu on 12.06.2023.
//

import Foundation

public class FinishedMotorcycleBuilder {
    
    public private(set) var wheels: Wheels = .racing
    public private(set) var engine: Engine = .fourStroke
    public private(set) var exhaust: Exhaust = .akrapovic
    public private(set) var colors: Color = []
    
    public func setWheels(_ wheels: Wheels) {
        self.wheels = wheels
    }
    
    public func setEngine(_ engine: Engine) {
        self.engine = engine
    }
    
    public func setExhaust(_ exhaust: Exhaust) {
        self.exhaust = exhaust
    }
    
    public func addColor(_ color: Color) {
        colors.insert(color)
    }
    
    public func removeColor(_ color: Color) {
        colors.remove(color)
    }
    
    public func build() -> FinishedMotorcycle {
        return FinishedMotorcycle(wheels: wheels, engine: engine, exhaust: exhaust, color: colors)
    }
}
