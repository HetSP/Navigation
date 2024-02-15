//
//  SecondViewController.swift
//  Navigation_Assignment
//
//  Created by promact on 05/02/24.
//

import UIKit

class SecondViewController: UIViewController {

    //label to display multiplication of two operands
    @IBOutlet weak var resultmultiplication: UILabel!
    
    //variables to store operands and result of their multiplication
    var result: String!;
    var operand1: Int!;
    var operand2: Int!;
    override func viewDidLoad() {
        super.viewDidLoad()
        result = String(operand1 * operand2)
        resultmultiplication.text = result
    }
    

}
