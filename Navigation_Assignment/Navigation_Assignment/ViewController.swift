//
//  ViewController.swift
//  Navigation_Assignment
//
//  Created by promact on 05/02/24.
//

import UIKit

class ViewController: UIViewController {
    
    //two textfields for two operands
    @IBOutlet weak var txtOperand1: UITextField!
    @IBOutlet weak var txtOperand2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //onclick event for button to navigate and pass data to second screen
    @IBAction func btnmultiply(_ sender: Any) {
        
        //creating instance of second screen's class
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        //passing values of textfields to second screen
        //check the fields are empty or not need to typecast the textfield data into integer because it is string by default
        vc.operand1 = txtOperand1.text! == "" ? 0 : Int(txtOperand1.text!)
        vc.operand2 = txtOperand2.text! == "" ? 0 : Int(txtOperand2.text!)
        
        //navigating to second screen
        self.navigationController?.pushViewController(vc, animated: true)
        
        //to clear the text fields after the navigation
        txtOperand1.text! = ""
        txtOperand2.text! = ""
    }

}

