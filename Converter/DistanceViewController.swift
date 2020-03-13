//
//  DistanceViewController.swift
//  Converter
//
//  Created by myPOS Software Solutions on 3/12/20.
//  Copyright © 2020 myPOS Software Solutions. All rights reserved.
//

import UIKit

class DistanceViewController: UIViewController {

    @IBOutlet weak var meterText: UITextField!
    @IBOutlet weak var footText: UITextField!
    @IBOutlet weak var yardText: UITextField!
    @IBOutlet weak var kiloMeterText: UITextField!
    @IBOutlet weak var mileText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func meterDidChanged(_ sender: Any) {
        convert(meter: Double(self.meterText.text!))
    }
    
    @IBAction func footDidChanged(_ sender: Any) {
        convert(foot: Double(self.footText.text!))
    }
    
    @IBAction func yardDidChanged(_ sender: Any) {
        convert(yard: Double(self.yardText.text!))
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
        
        self.footText.text = "";
        self.footText.endEditing(true);
        
        self.yardText.text = "";
        self.yardText.endEditing(true);
        
        self.kiloMeterText.text = "";
        self.kiloMeterText.endEditing(true);
        
        self.mileText.text = "";
        self.mileText.endEditing(true);
    }
    
    func convert(meter: Double? = nil,foot: Double? = nil, yard: Double? = nil, kiloMeters: Double? = nil, mile: Double? = nil)-> Void{
        if meter != nil{
            
            self.footText.text = String(meter! * 3.28084);
            self.footText.endEditing(true);
            
            self.yardText.text = String(meter! * 1.09361);
            self.yardText.endEditing(true);
            
            self.kiloMeterText.text = String(meter! * 0.001);
            self.kiloMeterText.endEditing(true);
            
            self.mileText.text = String(meter! * 0.000621371);
            self.mileText.endEditing(true);
            
        }else if foot != nil{
            
            self.meterText.text = String(foot! * 0.3048);
            self.meterText.endEditing(true);
            
            self.yardText.text = String(foot! * 0.333333);
            self.yardText.endEditing(true);
            
            self.kiloMeterText.text = String(foot! * 0.0003048);
            self.kiloMeterText.endEditing(true);
            
            self.mileText.text = String(foot! * 0.000189394);
            self.mileText.endEditing(true);
            
        }else if yard != nil{
            
            self.meterText.text = String(yard! * 0.9144);
            self.meterText.endEditing(true);
            
            self.footText.text = String(yard! * 3);
            self.footText.endEditing(true);
            
            self.kiloMeterText.text = String(yard! * 0.0009144);
            self.kiloMeterText.endEditing(true);
            
            self.mileText.text = String(yard! * 0.000568182);
            self.mileText.endEditing(true);
            
        }else if kiloMeters != nil{
            
            self.meterText.text = String(kiloMeters! * 1000);
            self.meterText.endEditing(true);
            
            self.footText.text = String(kiloMeters! * 3280.84);
            self.footText.endEditing(true);
            
            self.yardText.text = String(kiloMeters! * 1093.61);
            self.yardText.endEditing(true);
            
            self.mileText.text = String(kiloMeters! * 0.621371);
            self.mileText.endEditing(true);
            
        }else if mile != nil{
            
            self.meterText.text = String(mile! * 1609.34);
            self.meterText.endEditing(true);
            
            self.footText.text = String(mile! * 5280);
            self.footText.endEditing(true);
            
            self.yardText.text = String(mile! * 1760);
            self.yardText.endEditing(true);
            
            self.kiloMeterText.text = String(mile! * 1.60934);
            self.kiloMeterText.endEditing(true);
            
        }
    }
    
}
