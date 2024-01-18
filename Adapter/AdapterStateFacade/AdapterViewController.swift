//
//  ViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 10.05.2023.
//

import UIKit

class AdapterViewController: UIViewController {

    @IBOutlet weak var sportBikeLabel: UILabel!
    @IBOutlet weak var nakedBikeLabel: UILabel!
    @IBOutlet weak var scooterLabel: UILabel!
    @IBOutlet weak var adaptButton: UIButton!
    
    private var readyToRace = false
    
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
        if readyToRace {
            performSegue(withIdentifier: "GoToStateFacade", sender: nil)
        } else {
            let scooter = Scooter()
            scooterLabel.text = "\(ScooterAdapter(scooter).doRace())\n HP: \(scooter.HP)"
            adaptButton.setTitle("Let's race", for: .normal)
            readyToRace = true
        }
    }
    
    @IBAction func openInfo(_ sender: Any) {
        if let url = URL(string: "https://refactoring.guru/design-patterns/adapter/swift/example") {
            UIApplication.shared.open(url)
        }
    }
}

