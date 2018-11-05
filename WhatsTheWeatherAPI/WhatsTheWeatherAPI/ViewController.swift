//
//  ViewController.swift
//  WhatsTheWeatherAPI
//
//  Created by Nicholas Burcin on 11/5/18.
//  Copyright © 2018 Burcin Software. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var enterButton: UIButton!
    @IBAction func enterButtonPressed(_ sender: Any) {
    }
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.layer.cornerRadius = 10.0
        titleLabel.clipsToBounds = true
        cityLabel.layer.cornerRadius = 10.0
        cityLabel.clipsToBounds = true
        enterButton.layer.cornerRadius = 10.0
        enterButton.clipsToBounds = true
//        textField.layer.cornerRadius = 10.0
//        textField.clipsToBounds = true
        resultLabel.isHidden = true
        resultLabel.layer.cornerRadius = 10.0
        resultLabel.clipsToBounds = true
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

