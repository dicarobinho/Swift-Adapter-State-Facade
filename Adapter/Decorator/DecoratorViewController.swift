//
//  DecoratorViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 22.05.2023.
//

import UIKit

class DecoratorViewController: UIViewController {
    
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var finalExhaustButton: UIButton!
    @IBOutlet weak var decatExhaustButton: UIButton!
    
    let raceMotorycle = RaceMotorycle()
    var finalMotorcycleExhaust = FinalExhaustDecorator(racing: RaceMotorycle())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoLabel.text = "Stock Exhaust\n HP: \(raceMotorycle.getHP())"
    }
    
    @IBAction func addFinalExhaust(_ sender: Any) {
        let finalMotorcycleExhaust = FinalExhaustDecorator(racing: raceMotorycle)
        self.finalMotorcycleExhaust = finalMotorcycleExhaust
        infoLabel.text = "Added Final Exhaust\n HP: \(finalMotorcycleExhaust.getHP())"
        finalExhaustButton.isEnabled = false
        decatExhaustButton.isEnabled = true
    }
    
    @IBAction func addDecatExhaust(_ sender: Any) {
        let decatMotorcycleExhaust = DecatExhaustDecorator(racing: self.finalMotorcycleExhaust)
        infoLabel.text = "Added Decat Exhaust\n HP: \(decatMotorcycleExhaust.getHP())"
        decatExhaustButton.isEnabled = false
    }
    
    @IBAction func openInfo(_ sender: Any) {
        if let url = URL(string: "https://refactoring.guru/design-patterns/decorator/swift/example") {
            UIApplication.shared.open(url)
        }
    }
}
