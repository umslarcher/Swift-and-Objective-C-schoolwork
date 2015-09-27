//
//  ViewController.swift
//  MyFibonacciGenerator_Sept27
//
//  Created by William Smith on 9/27/15.
//  Copyright © 2015 William Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ResultLabel: UILabel!
    
    @IBOutlet weak var UserInText: UITextField!
    
    @IBAction func GenFibButton(sender: AnyObject) {
        
        // Start function generateFibinacci()
        ResultLabel.text = generateFibinacci()

    }
    
    @IBAction func ResetButton(sender: AnyObject) {
        
        ResultLabel.text = "Fibonacci Series Prints Here"
        UserInText.text = nil

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func generateFibinacci() -> String{
        
        
        var result = 0
        var i = 0
        var n1 = 0
        var n2 = 1
        let n3:Int? = Int(UserInText.text!)
        var series = String(n1)
        series += ", "
        series += String(n2) + ", "
        
        
        
        //In class we used 3 dots ... for 1 through 10 but couldn't get to work with user entered variable
        
        for (i=1; i<=n3; i++){
            result = n1+n2
            series += String(result)
            series += ", "
            n1 = n2
            n2 = result
            
            
        }
        
        series = series.substringToIndex(series.endIndex.predecessor())
        
        return series;
        
        
        
        
    }

}

