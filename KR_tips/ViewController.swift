//
//  ViewController.swift
//  KR_tips
//
//  Created by Kwame Robertson on 12/12/15.
//  Copyright © 2015 Kwame Robertson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    // MARK: - View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tipLabel.text = "$0.00"
        totalLabel.text = "$0.00"
        
        // Loads user's entries
//        let defaults = NSUserDefaults.standardUserDefaults()
//        let stringValue = defaults.objectForKey("numKey placeholder") as! String
//        let intValue = defaults.integerForKey("num2key placeholder")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - UIControl Events
    @IBAction func onEditingChanged(sender: AnyObject) {
        var tipPercentages = [0.18, 0.2, 0.22]
        var selectedTipPercentage = tipPercentages[tipControl.selectedSegmentIndex]
        var billAmount = NSString(string: billField.text!).doubleValue
        var tip = billAmount * selectedTipPercentage
        var total = billAmount + tip
        
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        // Saves user's entries
//        let defaults = NSUserDefaults.standardUserDefaults()
//        defaults.setObject("some_string_to_save", forKey: "some_key_that_you_choose")
//        defaults.setInteger(123, forKey: "another_key_that_you_choose")
//        defaults.synchronize()
        
    }
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

}

