//
//  TemperatureViewController.swift
//  Converter
//
//  Created by myPOS Software Solutions on 3/12/20.
//  Copyright © 2020 myPOS Software Solutions. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController {

    @IBOutlet weak var celsiusText: UITextField!
    @IBOutlet weak var fahrenheitText: UITextField!
    @IBOutlet weak var kelvinText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func celsiusDidChanged(_ sender: Any) {
        convert(celsius: Double(self.celsiusText.text!))
    }
    
    @IBAction func fahrenheitDidChanged(_ sender: Any) {
        convert(fahrenheit: Double(self.fahrenheitText.text!))
    }
    
    @IBAction func kelvinDidChanged(_ sender: Any) {
        convert(kelvin: Double(self.kelvinText.text!))
    }
    
    @IBAction func reset(_ sender: Any) {
        self.celsiusText.text = "";
        self.celsiusText.endEditing(true);
        
        self.fahrenheitText.text = "";
        self.fahrenheitText.endEditing(true);
        
        self.kelvinText.text = "";
        self.kelvinText.endEditing(true);
    }
    
    func convert(celsius :Double? = nil, fahrenheit: Double? = nil, kelvin :Double? = nil)-> Void{
        if celsius != nil{
            self.fahrenheitText.text = String((celsius! * 9/5) + 32 );
            self.fahrenheitText.endEditing(true);
            
            self.kelvinText.text = String(celsius! + 273.15);
            self.kelvinText.endEditing(true);
        }else if fahrenheit != nil{
            self.celsiusText.text = String((fahrenheit! - 32) * 5/9);
            self.celsiusText.endEditing(true);
            
            self.kelvinText.text = String(((fahrenheit! - 32) * 5/9) + 273.15);
            self.kelvinText.endEditing(true);
            
        }else if kelvin != nil{
            self.celsiusText.text = String(kelvin! - 273.15);
            self.celsiusText.endEditing(true);
            
            self.fahrenheitText.text = String((kelvin! - 273.15) * 9/5 + 32);
            self.fahrenheitText.endEditing(true);
            
        }
    }
}
