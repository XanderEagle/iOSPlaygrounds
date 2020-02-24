//
//  ViewController.swift
//  trafficLights
//
//  Created by Xander on 2/13/20.
//  Copyright © 2020 Xander. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var Name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func returnToFirstScreen(unwindSegue:UIStoryboardSegue, sender: Any?) {
    

}
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    segue.destination.navigationItem.title = Name.text
    }
}

