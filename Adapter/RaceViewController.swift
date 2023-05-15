//
//  RaceViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 15.05.2023.
//

import UIKit

class RaceViewController: UIViewController {
    
    @IBOutlet weak var speedIndicatorLabel: UILabel!
    
    let motorcycle = Motorcycle()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speedIndicatorLabel.text = motorcycle.brake()
    }
    
    
    @IBAction func accelerate(_ sender: Any) {
        speedIndicatorLabel.text = motorcycle.accelerate()
    }
    
    @IBAction func brake(_ sender: Any) {
        speedIndicatorLabel.text = motorcycle.brake()
    }
}
