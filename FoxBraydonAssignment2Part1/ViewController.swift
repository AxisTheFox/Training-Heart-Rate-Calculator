//
//  ViewController.swift
//  FoxBraydonAssignment2Part1
//
//  Created by Fox, Braydon on 10/2/16.
//  Copyright © 2016 Fox, Braydon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var restingHeartRateTextField: UITextField!
    @IBOutlet weak var trainingHeartRateLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        ageTextField.text = ""
        restingHeartRateTextField.text = ""
        trainingHeartRateLabel.text = ""
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    @IBAction func calculateButton(sender: AnyObject) {
        let age = Double(ageTextField.text!)!
        let restingHeartRate = Double(restingHeartRateTextField.text!)!
        
        let maximumHeartRate = 220 - age
        
        let trainingHeartRate = (maximumHeartRate - restingHeartRate) * 0.6 + restingHeartRate
        trainingHeartRateLabel.text = String(trainingHeartRate)
    }


}

