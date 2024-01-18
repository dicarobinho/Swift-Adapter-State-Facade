//
//  FactoryViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 15.01.2024.
//

import UIKit

private class Factory {
    static func createMotorcycle(with motoCreator: MotosCreator) -> String {
        let moto = motoCreator.createMotorcycle()
        return "Motorcycle created:\nCategory: \(moto.category)\nHP: \(moto.horsepower)\nWheelies: \(moto.doWheelies())"
    }
}

class FactoryViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var motoImage: UIImageView!
    
    @IBAction func createNakedBike(_ sender: Any) {
        setupImage(imageName: "naked")
        messageLabel.text = Factory.createMotorcycle(with: NakedMotoCreator())
    }
    
    @IBAction func createSportBike(_ sender: Any) {
        setupImage(imageName: "sport")
        messageLabel.text = Factory.createMotorcycle(with: SportMotoCreator())
    }
    
    @IBAction func openInfo(_ sender: Any) {
        if let url = URL(string: "https://refactoring.guru/design-patterns/factory-method/swift/example") {
            UIApplication.shared.open(url)
        }
    }
    
    private func setupImage(imageName: String) {
        motoImage.isHidden = false
        motoImage.image = UIImage(named: imageName)
    }
}
