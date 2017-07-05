//
//  ViewController.swift
//  tipCalculator
//
//  Created by fabien brun on 05/07/2017.
//  Copyright © 2017 fabien brun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pourcentagePourboire:Int!
    
    @IBOutlet weak var montantFactureTexfield: UITextField!
    @IBOutlet weak var pourboireLabel: UILabel!
    @IBOutlet weak var montantTotalLabel: UILabel!
    @IBOutlet weak var pourboireSegmentedControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        pourboireSegmentedControl.addTarget(self, action: #selector(ViewController.calculerPourcentage), for: UIControlEvents.valueChanged)
        
    }

    func calculerPourcentage() {
    
        switch pourboireSegmentedControl.selectedSegmentIndex {
        case 0:
            print("segment selectionné:\(pourboireSegmentedControl.selectedSegmentIndex)")
            pourcentagePourboire = 15
        case 1:
            print("segment selectionné:\(pourboireSegmentedControl.selectedSegmentIndex)")
            pourcentagePourboire = 20
        case 2:
            print("segment selectionné:\(pourboireSegmentedControl.selectedSegmentIndex)")
            pourcentagePourboire = 25
        default:
            print("Pas de selection")
        }
        
        calculerPourboire(pourcent: Float(pourcentagePourboire!))
        
    }
    
    func calculerPourboire(pourcent:Float){
        
        let pourboire = Float(montantFactureTexfield.text!)! * pourcent / 100
        
        let montant = Float(montantFactureTexfield.text!)
        
        let pourBoireFormatStr = NSString(format: "%.2f", pourboire)
        
        let montantTotalFormatStr = NSString(format: "%.2f", pourboire + montant!)
        
        
        
        pourboireLabel.text = "€ \(pourBoireFormatStr)"
        montantTotalLabel.text = "€\(montantTotalFormatStr)"
    }

}

