//
//  ViewController.swift
//  tipCalculator
//
//  Created by fabien brun on 05/07/2017.
//  Copyright © 2017 fabien brun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var montantFactureTexfield: UITextField!
    @IBOutlet weak var pourboireLabel: UILabel!
    @IBOutlet weak var montantTotalLabel: UILabel!
    @IBOutlet weak var pourboireSegmentedControl: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
        pourboireSegmentedControl.addTarget(self, action: #selector(ViewController.calculerPourBoire), for: UIControlEvents.valueChanged)
        
    }

    func calculerPourBoire() {
    
        switch pourboireSegmentedControl.selectedSegmentIndex {
        case 0:
            print("segment selectionné:\(pourboireSegmentedControl.selectedSegmentIndex)")
        case 1:
            print("segment selectionné:\(pourboireSegmentedControl.selectedSegmentIndex)")
        case 2:
            print("segment selectionné:\(pourboireSegmentedControl.selectedSegmentIndex)")
        default:
            print("Pas de selection")
        }
        
    }

}

