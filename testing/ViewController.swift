//
//  ViewController.swift
//  testing
//
//  Created by Anil on 06/06/15.
//  Copyright (c) 2015 Variya Soft Solutions. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    
    @IBOutlet var fieldAltezza: UITextField!
    @IBOutlet var fieldPeso: UITextField!
    @IBOutlet var labelResult: UILabel!
    
    
    @IBAction func calcBmi(sender: AnyObject) {
        
        var h = (fieldAltezza.text as NSString).floatValue
        var w = (fieldPeso.text as NSString).floatValue
        fieldAltezza.text = String(format: "%.2f m", h)
        fieldPeso.text = String(format: "%.2f m", w)
        let result = w / (h * h)
        println(result)
        labelResult.text = String(format: "Il tuo bmi è %.2f", result)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}