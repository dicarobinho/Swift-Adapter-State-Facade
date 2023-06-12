//
//  BuilderViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 12.06.2023.
//

import UIKit

class BuilderViewController: UIViewController {
    
    @IBOutlet weak var motorcycleImage: UIImageView!
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func buildRacingMotorcycle(_ sender: Any) {
        build(moto: MotorcycleShop().racingMotorcycle(using: FinishedMotorcycleBuilder()), image: "racingMoto")
    }
    
    @IBAction func buildOffRoadMotorcycle(_ sender: Any) {        
        build(moto: MotorcycleShop().offRoadMotorcycle(using: FinishedMotorcycleBuilder()), image: "offRoadMoto")
    }
    
    private func build(moto: FinishedMotorcycle, image: String) {
        self.messageLabel.text = moto.description
        motorcycleImage.isHidden = false
        motorcycleImage.image = UIImage(named: image)
    }
}
