//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Franklin Brown on 4/5/15.
//  Copyright (c) 2015 Franklin Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        let sizeFromTextField = mensShoeSizeTextField.text
//            //string
//        let numFromTextField = sizeFromTextField.toInt()
//            //optional
//        var integerFromTextField = numFromTextField!
//            //unwrap optional
        
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Size"

            
        mensShoeSizeTextField.resignFirstResponder()
        mensShoeSizeTextField.text = ""
        
    }

}

