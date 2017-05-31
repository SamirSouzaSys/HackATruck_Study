//
//  ViewController.swift
//  easyGradute
//
//  Created by Student on 5/31/17.
//  Copyright © 2017 SamirSouza. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let ref = FIRDatabase.database().reference(withPath: "universidades")
        
        var items: [Universidade] = []
        
        let nomeUniversidade = "Nome universidade"

        
        let universidadeItem = Universidade(nome: String(nomeUniversidade),
                                            descricao: "descricao texto",
                                            key: "")
        
        let universidadeItemRef = ref.child(nomeUniversidade.lowercased())
        
        universidadeItemRef.setValue(universidadeItem.toAnyObject())
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

