//
//  HomeVC.swift
//  BMI-Calculator
//
//  Created by Marwan Mekhamer on 24/03/2025.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var Heightlbl: UILabel!
    @IBOutlet weak var HeightSlider: UISlider!
    @IBOutlet weak var Weightlbl: UILabel!
    @IBOutlet weak var WeightSilder: UISlider!
    
    var marwan = Brain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func SliderPressed(_ sender: UISlider) {
        let height = HeightSlider.value
        let weight = WeightSilder.value
        
        Heightlbl.text = marwan.getHeight(height)
        Weightlbl.text = marwan.getWeight(weight)
    }
    
    @IBAction func btnGoto2(_ sender: UIButton) {
        
        let height = HeightSlider.value
        let weight = WeightSilder.value
        let bmi = marwan.getBMIResult(height, weight)
        
       if let vc = storyboard?.instantiateViewController(withIdentifier: "result") as? ResultVC {
           vc.bmiValue = String(format: "%.1f", bmi)
           present(vc, animated: true)
        }
        
    }
    
}
