//
//  ViewController.swift
//  IOS Playground
//
//  Created by Rafael on 2019-12-16.
//  Copyright © 2019 Rafael Montenegro. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textView: UILabel!
    
    @IBOutlet weak var tf_first_name: UITextField!
    @IBOutlet weak var tf_last_name: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "hello"
        
        tf_first_name.becomeFirstResponder()
        tf_first_name.delegate = self
        tf_last_name.delegate = self
    }

    @IBAction func buttonPressed(_ sender: Any) {
        textView.text = "Hello \(tf_first_name.text!) \(tf_last_name.text!)!"
        
        view.endEditing(true)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            
        textField.resignFirstResponder()
        
        //Selects next textField if done with first...
        if textField == tf_first_name {
            tf_last_name.becomeFirstResponder()
        }
        
        return false
    }
}

