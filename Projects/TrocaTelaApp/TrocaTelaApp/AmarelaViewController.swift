//
//  AmarelaViewController.swift
//  TrocaTelaApp
//
//  Created by Student on 5/19/17.
//  Copyright © 2017 Samir. All rights reserved.
//

import UIKit

class AmarelaViewController: UIViewController {

    @IBOutlet weak var corTextField: UITextField!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
     
     Acontece antes da navegação acontecer
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destinationViewController.
         // Pass the selected object to the new view controller.
        if segue.identifier == "mostrarProximaView" {
            if let novaView = segue.destination as? BrancoViewController {
                // falaha devido ao label não ter sido redenrizado antes da tela existir
                // novaView.CorLabel.text = corTextField.text
                
                novaView.cor = corTextField.text
            }
        }
    }
 

}
