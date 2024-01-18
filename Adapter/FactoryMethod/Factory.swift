//
//  Factory.swift
//  Adapter
//
//  Created by Alex Farcasanu on 15.01.2024.
//

import Foundation

protocol MotosCreator {
    func createMotorcycle() -> MotorcycleProduct
}

protocol MotorcycleProduct {
    var category: String { get }
    var horsepower: Int { get }
    func doWheelies() -> String
}

//----------------------------------------------
class NakedMotoCreator: MotosCreator {
    public func createMotorcycle() -> MotorcycleProduct {
        return NakedMotoProduct()
    }
}

class NakedMotoProduct: MotorcycleProduct {
    var category = "naked"
    var horsepower = 125
    func doWheelies() -> String {
        return "Naked bikes can't do wheelies! :("
    }
}

//----------------------------------------------
class SportMotoCreator: MotosCreator {
    public func createMotorcycle() -> MotorcycleProduct {
        return SportMotoProduct()
    }
}

class SportMotoProduct: MotorcycleProduct {
    var category = "sport"
    var horsepower = 220
    func doWheelies() -> String {
        return "Sport bikes can do wheelies! Yeeeey! :)"
    }
}
