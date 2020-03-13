//
//  SpeedViewController.swift
//  Converter
//
//  Created by myPOS Software Solutions on 3/12/20.
//  Copyright © 2020 myPOS Software Solutions. All rights reserved.
//

import UIKit

class SpeedViewController: UIViewController {

    @IBOutlet weak var meterText: UITextField!
    @IBOutlet weak var feetText: UITextField!
    @IBOutlet weak var kiloMeterText: UITextField!
    @IBOutlet weak var mileText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func meterDidChanged(_ sender: Any) {
        convert(meter: Double(self.meterText.text!))
    }
    
    @IBAction func feetDidChanged(_ sender: Any) {
        convert(feet: Double(self.feetText.text!))
    }
    @IBAction func kiloMeterDidChanged(_ sender: Any) {
        convert(kiloMeters: Double(self.kiloMeterText.text!))
    }
    @IBAction func mileDidChanged(_ sender: Any) {
        convert(mile: Double(self.mileText.text!))
    }
    @IBAction func reset(_ sender: Any) {
        self.meterText.text = "";
        self.meterText.endEditing(true);
        
        self.feetText.text = "";
        self.feetText.endEditing(true);
        
        self.kiloMeterText.text = "";
        self.kiloMeterText.endEditing(true);
        
        self.mileText.text = "";
        self.mileText.endEditing(true);
    }
    
    func convert(meter: Double? = nil,feet: Double? = nil, kiloMeters: Double? = nil, mile: Double? = nil)-> Void{
        if meter != nil{
            
            self.feetText.text = String(meter! * 196.85);
            self.feetText.endEditing(true);
             
            self.kiloMeterText.text = String(meter! * 3.6);
            self.kiloMeterText.endEditing(true);
            
            self.mileText.text = String(meter! * 2.23694);
            self.mileText.endEditing(true);
            
        }else if feet != nil{
            
            self.meterText.text = String(feet! * 0.00508);
            self.meterText.endEditing(true);
            
            self.kiloMeterText.text = String(feet! * 0.018288);
            self.kiloMeterText.endEditing(true);
            
            self.mileText.text = String(feet! * 0.0113636);
            self.mileText.endEditing(true);
            
        }else if kiloMeters != nil{
            
            self.meterText.text = String(kiloMeters! * 0.277778);
            self.meterText.endEditing(true);
            
            self.feetText.text = String(kiloMeters! * 54.6807);
            self.feetText.endEditing(true);
        
            self.mileText.text = String(kiloMeters! * 0.621371);
            self.mileText.endEditing(true);
            
        }else if mile != nil{
            
            self.meterText.text = String(mile! * 0.44704);
            self.meterText.endEditing(true);
            
            self.feetText.text = String(mile! * 88);
            self.feetText.endEditing(true);
            
            self.kiloMeterText.text = String(mile! * 1.60934);
            self.kiloMeterText.endEditing(true);
            
        }
    }
}
