//
//  BridgeViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 18.01.2024.
//

import UIKit

class Service {
    static func addTunning(service: MotoTunningService) -> String {
        return service.addTunning()
    }
}

class BridgeViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func addNakedBikeTunning(_ sender: Any) {
        messageLabel.text = Service.addTunning(service: MotoTunningService(NakedBikeTunning()))
    }
    
    @IBAction func addSportBikeTunning(_ sender: Any) {
        messageLabel.text = Service.addTunning(service: MotoTunningService(SportBikeTunning()))
    }
    
    @IBAction func openInfo(_ sender: Any) {
        if let url = URL(string: "https://refactoring.guru/design-patterns/bridge/swift/example") {
            UIApplication.shared.open(url)
        }
    }
}
