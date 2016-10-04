//
//  ViewController.swift
//  TipCalculator
//
//  Created by admin on 10/3/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        let defaults = UserDefaults.standard
        let tipValue = defaults.integer(forKey: "tipValue")
        tipControl.selectedSegmentIndex = tipValue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }
    @IBAction func tipCalculate(_ sender: AnyObject) {
        let tipPercen = [0.18, 0.2, 0.25]
        let bill = Double(inputText.text!) ?? 0
        let tip = bill * tipPercen[tipControl.selectedSegmentIndex]
        let  total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
    }


}

