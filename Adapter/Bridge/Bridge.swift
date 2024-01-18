//
//  Bridge.swift
//  Adapter
//
//  Created by Alex Farcasanu on 18.01.2024.
//

import Foundation

protocol MotoTunning {
    func addMotoTunning() -> String
}

class MotoTunningService {

    fileprivate var motoTunning: MotoTunning

    init(_ motoTunning: MotoTunning) {
        self.motoTunning = motoTunning
    }

    func addTunning() -> String {
        let addTunning = motoTunning.addMotoTunning()
        return "Adding tunning on bike:\n" + addTunning
    }
}

class NakedBikeTunning: MotoTunning {
    func addMotoTunning() -> String {
        return "Added tunning on naked bike!"
    }
}

class SportBikeTunning: MotoTunning {
    func addMotoTunning() -> String {
        return "Added tunning on sport bike!"
    }
}
