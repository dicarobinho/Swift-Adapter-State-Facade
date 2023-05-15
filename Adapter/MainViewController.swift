//
//  ViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 10.05.2023.
//

import UIKit

class MainViewController: UIViewController {

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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        adaptButton.setTitle("Adapt scooter for race", for: .normal)
    }
    
    @IBAction func adaptScooterHP(_ sender: Any) {
        if readyToRace {
            performSegue(withIdentifier: "GoToRace", sender: nil)
        } else {
            let scooter = Scooter()
            scooterLabel.text = "\(ScooterAdapter(scooter).doRace())\n HP: \(scooter.HP)"
            adaptButton.setTitle("Let's race", for: .normal)
            readyToRace = true
        }
    }
}

