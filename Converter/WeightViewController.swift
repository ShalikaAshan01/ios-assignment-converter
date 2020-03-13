//
//  WeightViewController.swift
//  Converter
//
//  Created by myPOS Software Solutions on 3/12/20.
//  Copyright © 2020 myPOS Software Solutions. All rights reserved.
//

import UIKit

class WeightViewController: UIViewController {

    @IBOutlet weak var gramText: UITextField!
    @IBOutlet weak var kilogramText: UITextField!
    @IBOutlet weak var poundsText: UITextField!
    @IBOutlet weak var ounceText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func gramTextDidChange(_ sender: Any) { convert(grams: Double(self.gramText.text!));}
    
    @IBAction func kiloGramTextDidChange(_ sender: Any) { convert(kiloGram: Double(self.kilogramText.text!));}
    
    @IBAction func poundsTextDidChange(_ sender: Any) {
        convert(pounds: Double(self.poundsText.text!));
    }

    @IBAction func ounceTextDidChange(_ sender: Any) {
        convert(ounce: Double(self.ounceText.text!));
    }
    
    func convert(grams: Double? = nil, kiloGram: Double? = nil, pounds: Double? = nil, ounce: Double? = nil)-> Void{
        
        if grams != nil {
            self.kilogramText.text = String(grams! * 0.001);
            self.kilogramText.endEditing(true);
            
            self.poundsText.text = String(grams! * 0.00220462);
            self.poundsText.endEditing(true);
            
            self.ounceText.text = String(grams! * 0.035274);
            self.ounceText.endEditing(true);
        }else if kiloGram != nil{
            self.gramText.text = String(kiloGram! * 1000.0);
            self.gramText.endEditing(true);
            
            self.poundsText.text = String(kiloGram! * 2.20462);
            self.poundsText.endEditing(true);
            
            self.ounceText.text = String(kiloGram! * 35.274);
            self.ounceText.endEditing(true);
        }else if pounds != nil{
            self.gramText.text = String(pounds! * 453.592);
            self.gramText.endEditing(true);
            
            self.kilogramText.text = String(pounds! * 0.453592);
            self.kilogramText.endEditing(true);
            
            self.ounceText.text = String(pounds! * 16.0);
            self.ounceText.endEditing(true);
        }else if ounce != nil{
            self.gramText.text = String(ounce! * 28.3495);
            self.gramText.endEditing(true);
            
            self.kilogramText.text = String(ounce! * 0.0283495);
            self.kilogramText.endEditing(true);
            
            self.poundsText.text = String(ounce! * 0.0625);
            self.poundsText.endEditing(true);
        }
    }
    
    @IBAction func reset(_ sender: Any) {
        self.gramText.text = "";
        self.gramText.endEditing(true);
        
        self.kilogramText.text = "";
        self.kilogramText.endEditing(true);
        
        self.poundsText.text = "";
        self.poundsText.endEditing(true);
        
        self.ounceText.text = "";
        self.ounceText.endEditing(true);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
