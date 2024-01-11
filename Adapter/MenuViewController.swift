//
//  MenuViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 22.05.2023.
//

import UIKit

class MenuViewController: UIViewController {
    
    
    @IBAction func goToAdapter(_ sender: Any) {
        performSegue(withIdentifier: "GoToAdapter", sender: nil)
    }
    
    @IBAction func goToDecorator(_ sender: Any) {
        performSegue(withIdentifier: "GoToDecorator", sender: nil)
    }
    
    @IBAction func goToObserver(_ sender: Any) {
        performSegue(withIdentifier: "GoToObserver", sender: nil)
    }
    
    @IBAction func goToBuilder(_ sender: Any) {
        performSegue(withIdentifier: "GoToBuilder", sender: nil)
    }
    
    @IBAction func goToComposite(_ sender: Any) {
        performSegue(withIdentifier: "GoToComposite", sender: nil)
    }
    
    @IBAction func goToChainOfResponsibility(_ sender: Any) {
        performSegue(withIdentifier: "GoToChainOfResponsibility", sender: nil)
    }
}
