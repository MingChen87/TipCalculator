//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by admin on 10/4/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipValue: UISegmentedControl!
    let defaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        tipValue.selectedSegmentIndex = defaults.integer(forKey: "tipValue")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func valueForTip(_ sender: AnyObject) {
        
        defaults.set(tipValue.selectedSegmentIndex, forKey: "tipValue")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
