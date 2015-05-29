//
//  ViewController.swift
//  laika
//
//  Created by Gemma Shearer on 29/05/2015.
//  Copyright (c) 2015 GemmaShearer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var dogsAgeTextField: UITextField!
    
    @IBOutlet weak var dogsAgeLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


    @IBAction func calculateAgeButton(sender: UIButton) {
        let dogsAge = dogsAgeTextField.text.toInt()!
        let conversionConstant = 7
        dogsAgeTextField.resignFirstResponder()
        dogsAgeLabel.hidden = false
        dogsAgeLabel.text = "Your dog is " + "\(dogsAge * conversionConstant)" + " dog years old"
    }
    
    
    @IBAction func calculateScientificAge(sender: UIButton) {
        let dogsScientificAge = dogsAgeTextField.text.toInt()!
        let youngConversionConstant = 10.5
        let oldConversionConstant = 4
        dogsAgeTextField.resignFirstResponder()
        dogsAgeLabel.hidden = false
        if dogsScientificAge <= 2 {
            dogsAgeLabel.text = "Your dog is " + "\(Double(dogsScientificAge) * youngConversionConstant)" + " dog years old"
        } else {
            dogsAgeLabel.text = "Your dog is " + "\(dogsScientificAge * oldConversionConstant)" + " dog years old"
        }
    }
    
}

