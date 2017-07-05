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
        print(montantFactureTexfield.text!)
    }

}

