//
//  SettingsViewController.swift
//  TipApp
//
//  Created by Kevin Rose on 3/13/17.
//  Copyright © 2017 Kevin Rose. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let intDefaultPercConstant = "intDefPercIndex"
    @IBOutlet weak var defTipSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Load the saved defaults
        let defaults = UserDefaults.standard
        defTipSegment.selectedSegmentIndex = defaults.integer(forKey: intDefaultPercConstant)
        
    }


    @IBAction func chgDefaultTip(_ sender: Any) {
        
        // Determine which segment was selected
        let defPercentIndex = defTipSegment.selectedSegmentIndex
        
        // Save selected percent index
        let defaults = UserDefaults.standard
        defaults.setValue(defPercentIndex, forKey: intDefaultPercConstant)
        
    }

}
