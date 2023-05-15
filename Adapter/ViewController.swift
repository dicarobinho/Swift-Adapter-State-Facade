//
//  ViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 10.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var sportBikeLabel: UILabel!
    @IBOutlet weak var nakedBikeLabel: UILabel!
    @IBOutlet weak var scooterLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sportBike = SportBike()
        let nakedBike = NakedBike()
        let scooter = Scooter()
        
        sportBikeLabel.text = "\(sportBike.doRace())\n HP: \(sportBike.HP)"
        nakedBikeLabel.text = "\(nakedBike.doRace())\n HP: \(nakedBike.HP)"
        scooterLabel.text = "\(scooter.doRace())\n HP: \(scooter.HP)"
    }
    
    @IBAction func adaptScooterHP(_ sender: Any) {
        let scooter = Scooter()
        scooterLabel.text = "\(ScooterAdapter(scooter).doRace())\n HP: \(scooter.HP)"
    }
}

