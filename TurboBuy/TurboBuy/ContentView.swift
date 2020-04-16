//
//  ContentView.swift
//  TurboBuy
//
//  Created by Xander Eagle on 4/16/20.
//  Copyright © 2020 Xander Eagle. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    @IBOutlet weak var forgotUserButton: UIButton!
    @IBOutlet weak var forgotPassButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let sender = sender as? UIButton else {return}
        
        if sender == forgotPassButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgotUserButton {
            segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title =
            usernameField.text
        }
    }
    @IBAction func forgotUsernameButton(_ sender: UIButton) {
        performSegue(withIdentifier: "logIn", sender: forgotUserButton)
    }
    
    @IBAction func forgotPasswordUsername(_ sender: UIButton) {
        performSegue(withIdentifier: "logIn", sender: forgotPassButton)
    }
}
