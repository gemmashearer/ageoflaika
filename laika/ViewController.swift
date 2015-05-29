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
    
}

