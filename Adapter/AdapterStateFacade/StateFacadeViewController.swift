//
//  RaceViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 15.05.2023.
//

import UIKit

class RaceViewController: UIViewController {
    
    @IBOutlet weak var speedIndicatorLabel: UILabel!
    @IBOutlet weak var retryImageButton: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
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
    
    @IBAction func retryImage(_ sender: Any) {
        let url = URL(string: "https://storage.kawasaki.eu/public/kawasaki.eu/en-EU/model/21MY_Z900_BK4_STU.png")
        imageView.downloadImage(at: url!)
        retryImageButton.isHidden = true
    }
    
    @IBAction func openStateInfo(_ sender: Any) {
        if let url = URL(string: "https://refactoring.guru/design-patterns/state/swift/example") {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func openFacadeInfo(_ sender: Any) {
        if let url = URL(string: "https://refactoring.guru/design-patterns/facade/swift/example") {
            UIApplication.shared.open(url)
        }
    }
}
