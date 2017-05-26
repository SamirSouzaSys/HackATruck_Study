//
//  ViewController.swift
//  RevisaoUFMA
//
//  Created by Student on 5/26/17.
//  Copyright © 2017 SamirSouza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameTextField: UITextField!
    @IBAction func loginBtn() {
        
        //Pegar o text do textField
        let userName = userNameTextField.text ?? ""
        // Comparar com "user" admin
        switch userName{
        case "user" :
            performSegue(withIdentifier: "userSegue", sender: nil)
            break
        case "admin" :
            performSegue(withIdentifier: "adminSegue", sender: nil)
            break
        default:
            print("UserName não cadastrado")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

