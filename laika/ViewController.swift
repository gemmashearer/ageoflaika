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
        //make the value from the text field a string
        let stringFromTextField = dogsAgeTextField.text
        //convert the string to a double
        let doubleFromTextField = Double((stringFromTextField as NSString).doubleValue)
        // make this the dog years
        var realDogYears:Double
        // if else statement: the if bit works out the dog age for the older dogs - multiply the first 2 years by 10 then the remaining years by 4
        if doubleFromTextField > 2 {
            realDogYears = (10.5 * 2) + (doubleFromTextField - 2) * 4
        } else { //calculates the age of the younger dogs
            realDogYears = doubleFromTextField * 10.5
        }
        //makes the labels show the age
        dogsAgeLabel.hidden = false
        dogsAgeLabel.text = "Your dog is " + "\(realDogYears)" + " dog years old"
        
    }
    
}


/* the idea is that the first 2 years of any dog will be * 10.5 so then the next x years will be * 4. So for the else statement I need a way of calculating the difference between the age and 2 and then doing maths on it 
so I need to create a variable which is basically the dog age - 2

*/
