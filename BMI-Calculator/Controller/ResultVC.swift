//
//  ResultVC.swift
//  BMI-Calculator
//
//  Created by Marwan Mekhamer on 24/03/2025.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var Resultlbl: UILabel!
    @IBOutlet weak var DeviceLabel: UILabel!
    
    var bmiValue : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        Resultlbl.text = bmiValue
        getDevice()
    }
    
    func getDevice(){
        
        if let bmi = Double(bmiValue ?? "") {
            if bmi > 0 && bmi < 12 {
                view.backgroundColor = .lightGray
                DeviceLabel.text = "Eat a lot of pieces"
                
            } else if bmi >= 12 && bmi <= 18.5 {
                view.backgroundColor = .systemBlue
                DeviceLabel.text = "Eat more pies!"
                
            } else if bmi >= 18.5 && bmi <= 24.9 {
                view.backgroundColor = .systemGreen
                DeviceLabel.text = "Fit as a Fiddle!"
                
            } else if bmi >= 24.9 && bmi <= 29 {
                view.backgroundColor = .systemYellow
                DeviceLabel.text = "Do not eat pies!"
                
            } else if bmi >= 29 && bmi <= 39 {
                view.backgroundColor = .systemOrange
                DeviceLabel.text = "Make Diet!"
                
            } else if bmi >= 39 && bmi <= 43 {
                view.backgroundColor = .systemRed
                DeviceLabel.text = "Dangerous level!"
                
            } else if bmi > 43 {
                view.backgroundColor = .black
                DeviceLabel.text = "You should be dead now!"
            }
        } else {
            // Handle the case where bmiValue is not a valid number
            view.backgroundColor = .white
            DeviceLabel.text = "Invalid BMI value"
        }
    }
    
    @IBAction func Recalculatebtn(_ sender: UIButton) {
        
        dismiss(animated: true)
    }
}
