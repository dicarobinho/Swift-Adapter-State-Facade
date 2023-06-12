//
//  Builder.swift
//  Adapter
//
//  Created by Alex Farcasanu on 12.06.2023.
//

import Foundation

public struct FinishedMotorcycle {
    public let wheels: Wheels
    public let engine: Engine
    public let exhaust: Exhaust
    public let color: Color
}

extension FinishedMotorcycle: CustomStringConvertible {
    public var description: String {
        return ("Our motorcycle is ready to race. We have \(wheels.rawValue) as wheels type also an \(engine.rawValue) as engine with an \(exhaust.rawValue) exhaust and the colors are: \(color.description)! Let's race!")
    }
}

public enum Wheels: String {
    case offRoad = "off road"
    case racing
}

public enum Engine: String {
    case twoStroke = "Two stroke"
    case fourStroke = "Four stroke"
}

public enum Exhaust: String {
    case akrapovic = "Akrapovic"
    case leovince = "Leo Vince"
    case mivv = "MIVV"
}

public struct Color: OptionSet {
    
    public let rawValue: Int
    
    public static let red = Color(rawValue: 1 << 0)
    public static let orange = Color(rawValue: 1 << 1)
    public static let black = Color(rawValue: 1 << 2)
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

extension Color: CustomStringConvertible {
    
    static public var debugDescriptions: [(Self, String)] = [
        (.red, "red"),
        (.orange, "orange"),
        (.black, "black")
    ]
    
    public var description: String {
        let result: [String] = Self.debugDescriptions.filter { contains($0.0) }.map { $0.1 }
        let printable = result.joined(separator: ", ")
        
        return "\(printable)"
    }
}

