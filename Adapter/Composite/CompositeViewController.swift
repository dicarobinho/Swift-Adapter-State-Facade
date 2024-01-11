//
//  CompositeViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 28.06.2023.
//

import UIKit

class CompositeViewController: UIViewController {
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBAction func addSportMoto(_ sender: Any) {
        let circuit = Circuit(SportMoto())
        setMessage(circuit: circuit)
    }
    
    @IBAction func addNakedMoto(_ sender: Any) {
        let circuit = Circuit(NakedMoto())
        setMessage(circuit: circuit)
    }
    
    @IBAction func addMotos(_ sender: Any) {
        let circuit = Circuit(SportMoto(), NakedMoto())
        setMessage(circuit: circuit)
    }
    
    private func setMessage(circuit: Circuit) {
        messageLabel.text = "\(messageLabel.text ?? "") \(circuit.addMoto())"
    }
}
