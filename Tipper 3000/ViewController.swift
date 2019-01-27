//
//  ViewController.swift
//  Tipper 3000
//
//  Created by TRAVIS ABENDSHIEN on 1/24/19.
//  Copyright © 2019 TRAVIS ABENDSHIEN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    //Tip Control Changed
    
    //On updated Bill Amount
    @IBAction func calculateTip(_ sender: Any) {
        
        //Gets Bill amount as double
        let bill = Double(billField.text!) ?? 0
        
        //Calculate tip and total amounts
        let tipPercentages = [0.1, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex] //tipControl.selectedSegmentIndex
        let total = bill + tip
        
        //Update text labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    //Tap background
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
    
    
}

