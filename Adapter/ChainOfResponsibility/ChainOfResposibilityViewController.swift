//
//  ChainOfResponsibilityViewController.swift
//  Adapter
//
//  Created by Alex Farcasanu on 11.01.2024.
//

import UIKit

class ChainOfResponsibilityViewController: UIViewController {
    
    @IBOutlet weak var brandTextField: UITextField!
    @IBOutlet weak var yearTextField: UITextField!
    @IBOutlet weak var sportExhaustTextField: UITextField!
    @IBOutlet weak var nakedBikeButton: UIButton!
    @IBOutlet weak var sportBikeButton: UIButton!
    @IBOutlet weak var switchForSportBike: UISwitch!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBAction func loadNakedBike(_ sender: Any) {
        let nakedBikeHandler = BaseHandler(with: NakedBikesHandler())
        
        var message = "Request for naked bike in progress...\n"

        let request = NakedBikesRequest(brand: brandTextField.text, year: yearTextField.text)

        if let error = nakedBikeHandler.handle(request) {
             message = "\(message)Error -> \(error.errorDescription ?? "")"
         } else {
             message = "\(message)Naked bike loaded: \(brandTextField.text ?? "") \(yearTextField.text ?? "")"
         }
        
        messageLabel.text = message
    }
    
    @IBAction func loadSportBike(_ sender: Any) {
        let sportBikeHandler = BaseHandler(with: SportBikesHandler())
        
        var message = "Request for sport bike in progress...\n"
        
        let request = SportBikesRequest(brand: brandTextField.text, year: yearTextField.text, sportExhaustBrand: sportExhaustTextField.text)
        
        if let error = sportBikeHandler.handle(request) {
            message = "\(message)Error -> \(error.errorDescription ?? "")"
        } else {
            message = "\(message)Sport bike loaded: \(brandTextField.text ?? "") \(yearTextField.text ?? "") \(sportExhaustTextField.text ?? "")"
         }
        
        messageLabel.text = message
    }
    
    @IBAction func switchSportBike(_ sender: Any) {
        if switchForSportBike.isOn {
            sportExhaustTextField.isHidden = false
            sportBikeButton.isHidden = false
            nakedBikeButton.isHidden = true
        } else {
            sportExhaustTextField.isHidden = true
            sportBikeButton.isHidden = true
            nakedBikeButton.isHidden = false
        }
    }
}
