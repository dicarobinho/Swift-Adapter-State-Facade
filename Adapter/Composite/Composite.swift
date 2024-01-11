//
//  Composite.swift
//  Adapter
//
//  Created by Alex Farcasanu on 28.06.2023.
//

import Foundation

protocol Moto {
    func addMoto() -> String
}

final class SportMoto: Moto {
    func addMoto() -> String {
        "\nAdded a sport moto on circuit!"
    }
}

final class NakedMoto: Moto {
    func addMoto() -> String {
        "\nAdded a naked moto on circuit!"
    }
}

final class Circuit: Moto {

    private lazy var motos = [Moto]()

    init(_ motos: Moto...) {
        self.motos = motos
    }

    func addMoto() -> String {
        var message = ""
        for moto in self.motos {
            message.append(moto.addMoto())
        }
        return message
    }
}
