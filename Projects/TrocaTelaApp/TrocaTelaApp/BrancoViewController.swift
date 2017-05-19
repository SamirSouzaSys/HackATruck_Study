//
//  BrancoViewController.swift
//  TrocaTelaApp
//
//  Created by Student on 5/19/17.
//  Copyright © 2017 Samir. All rights reserved.
//

import UIKit

class BrancoViewController: UIViewController {

    @IBOutlet weak var CorLabel: UILabel!
    
    var cor: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CorLabel.text = cor
        
        if cor != ""{
            switch cor!.lowercased() {
            case "vermelho", "red":
                self.view.backgroundColor = UIColor.red
                
            case "verde", "green":
                self.view.backgroundColor = UIColor.green
            default:
                self.view.backgroundColor = UIColor.gray
            }
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
