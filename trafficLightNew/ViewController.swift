//
//  ViewController.swift
//  trafficLightNew
//
//  Created by George Kook on 25.03.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var textButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 55
        redLight.alpha = 0.4
        yellowLight.layer.cornerRadius = 55
        yellowLight.alpha = 0.4
        greenLight.layer.cornerRadius = 55
        greenLight.alpha = 0.4
        textButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }

    @IBAction func textButtonPressed() {
        if redLight.alpha == 1 {
            redLight.alpha = 0.4
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.4
            greenLight.alpha = 1
        } else if greenLight.alpha == 1 {
            greenLight.alpha = 0.4
            redLight.alpha = 1
        } else {
            textButton.setTitle("NEXT", for: .normal)
            redLight.alpha = 1
        }
        
      
}
    



}
