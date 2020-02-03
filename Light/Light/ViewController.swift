//
//  ViewController.swift
//  Light
//
//  Created by Xander on 1/31/20.
//  Copyright © 2020 Xander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true
    @IBOutlet weak var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }



    @IBAction func buttonPressed(_ sender: UIButton) {
        lightOn = !lightOn
        updateUI()
        
    }
        
    func updateUI(){
        if lightOn {
            view.backgroundColor = .yellow
            lightButton.setTitle("On", for: .normal)
        } else {
                view.backgroundColor = .purple
            lightButton.setTitle("Off", for: .normal)
    }
}
}
