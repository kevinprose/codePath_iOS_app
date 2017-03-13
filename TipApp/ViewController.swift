//
//  ViewController.swift
//  TipApp
//
//  Created by Kevin Rose on 3/12/17.
//  Copyright © 2017 Kevin Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let intDefaultPercConstant = "intDefPercIndex"
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Load the saved defaults
        let defaults = UserDefaults.standard
        tipControl.selectedSegmentIndex = defaults.integer(forKey: intDefaultPercConstant)
        
    }

    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func chgPercentages(_ sender: Any) {
        
        // When user changes percentages, recalculate
        // Improvement -- Code is duplicated with calculateTip -- Determine call and refactor
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // When user changes percentages, recalculate
        
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }

}

