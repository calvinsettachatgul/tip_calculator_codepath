//
//  ViewController.swift
//  tippy
//
//  Created by Calvin Settachatgul on 2/28/17.
//  Copyright © 2017 Calvin Settachatgul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
//        print("hello")
        view.endEditing(true)
    }
//    @IBAction func calculateAgain(_ sender: Any) {
//        self.calculateTip(sender)
//    }


    @IBAction func calculateTip(_ sender: Any) {
        let tipPercentages = [0.18, 0.20, 0.25]
        let bill = Double(billField.text!); 0
        let tip = bill! * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill! + tip
        //tipLabel.text = "$\(tip)"
        tipLabel.text = String( format: "$%.2f", tip)
        totalLabel.text = String( format: "$%.2f", total)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
}

