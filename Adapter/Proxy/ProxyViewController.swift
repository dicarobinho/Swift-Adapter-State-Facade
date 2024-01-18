//
//  ProxyViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 16.01.2024.
//

import UIKit

class ShopAccess {
    static func buyMoto(shop: Shop, CNP: String) -> String {
        return shop.buyMoto(for: CNP)
    }
}

class ProxyViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var dataTextField: UITextField!
    
    @IBAction func buyMoto(_ sender: Any) {
        messageLabel.text = ShopAccess.buyMoto(shop: MotoShopProxy(MotoShop()), CNP: dataTextField.text ?? "")
    }
    
    @IBAction func openInfo(_ sender: Any) {
        if let url = URL(string: "https://refactoring.guru/design-patterns/proxy/swift/example") {
            UIApplication.shared.open(url)
        }
    }
}
