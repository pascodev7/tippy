//
//  ViewController.swift
//  tippy
//
//  Created by mac on 9/26/19.
//  Copyright © 2019 Pascodev7. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // The billField
    
    @IBOutlet weak var billField: UITextField!
    // The tipLabel
    @IBOutlet weak var tipLabel: UILabel!
    // The totalLabel
    @IBOutlet weak var totalLabel: UILabel!
    // The tipControl via the segmentedView
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        // Dismiss the keyboard
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        // Get the bill amount
        let bill =
            Double(billField.text!)
            ?? 0
        
        // Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

