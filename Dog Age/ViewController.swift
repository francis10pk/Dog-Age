//
//  ViewController.swift
//  Dog Age
//
//  Created by english on 2024-02-02.
//

import UIKit
import Foundation
class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
   
    @IBOutlet weak var AgeOfDog: UITextField!
    
    @IBOutlet weak var message: UILabel!
    @IBAction func checkAge(_ sender: Any) {
        
        if let ageString = AgeOfDog.text, let age = Int(ageString){
            let humanYear = calcAge(dogAge: age)
            message.text = "If your " + ageString + " years old dog were a human he/she would have " + String(humanYear) + " years old"
            message.backgroundColor = UIColor(red: 1.0, green: 0.8, blue: 1.0, alpha: 1.0)
            message.textAlignment = .center
            message.font = UIFont.systemFont(ofSize: 16.0)
        } else {
            message.text = "Not a valid input for the age of a dog"
            }
        }
    
    }
     
    func calcAge(dogAge:Int) -> Int
    {
        return dogAge*7
    }


