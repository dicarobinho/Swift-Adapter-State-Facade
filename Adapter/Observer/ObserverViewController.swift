//
//  ObserverViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 25.05.2023.
//

import UIKit

class ObserverViewController: UIViewController, ObserverProtocol {
    
    @IBOutlet weak var cartLabel: UILabel!
    
    var id: Int = 1
    private var bikes: NakedBike?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bikes = NakedBike(numberOfBikes: 0)
        bikes?.numberOfBikes.addObserver(self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        bikes?.numberOfBikes.removeObserver(self)
    }
    
    @IBAction func removeItem(_ sender: Any) {
        bikes?.removeBikeFromCart()
    }
    
    @IBAction func addItem(_ sender: Any) {
        bikes?.addBikeToCart()
    }
    
    func onValueChanged(_ value: Any?) {
        cartLabel.text = "Cart: \(value ?? 0)"
    }
    
    @IBAction func openInfo(_ sender: Any) {
        if let url = URL(string: "https://refactoring.guru/design-patterns/observer/swift/example") {
            UIApplication.shared.open(url)
        }
    }
}
