//
//  ViewController.swift
//  temperatureConverter
//
//  Created by Xander on 2/21/20.
//  Copyright © 2020 Xander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temperatureInput: UITextField!
    
    @IBOutlet weak var celsius: UILabel!
    
    @IBOutlet weak var fahrenheight: UILabel!
    
    @IBOutlet weak var `switch`: UISwitch!
    
    @IBOutlet weak var finalTemp: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        if `switch`.isOn {
            let temp = temperatureInput.text!
            let newTemp = 5 / 9 * (Double(temp)! - 32.0)
            finalTemp.text = String(newTemp)
        }

        else {
            let temp = temperatureInput.text!
            let newTemp = (Double(temp)! * 9 / 5) + 32
            finalTemp.text = String(newTemp)
            }
            
            
        }
    }
    

