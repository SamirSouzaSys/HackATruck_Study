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

    var universidades: [Universidade] = []
    var reviews: [Review] = []
    var cursos: [Curso] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let ref = FIRDatabase.database().reference(withPath: "universidades")

        // INSERTING DATA
//        let universidadeItem1 = Universidade(nome: "Universidade Federal do Maranhão",
//                                            descricao: "descricao ufma",
//                                            key: "")
//        let universidadeItem2 = Universidade(nome: "Universidade Estadual do Maranhão",
//                                             descricao: "descricao uema",
//                                             key: "")
//        let universidadeItem3 = Universidade(nome: "Instituto federal de Educação, Ciência e Tecnologia",
//                                             descricao: "descricao ifma",
//                                             key: "")
//
//        self.universidades.append(universidadeItem1)
//        self.universidades.append(universidadeItem2)
//        self.universidades.append(universidadeItem3)
//        
//        for uni in universidades {
//            let universidadeItemRef = ref.child(uni.nome.lowercased())
//            
//            universidadeItemRef.setValue(uni.toAnyObject())
//        }
        
        // RETRIEVING DATA
//        ref.observe(.value, with: { snapshot in
//            var newUniversidades: [Universidade] = []
//            
//            for universidade in snapshot.children {
//                // 4
//                let universidadeItem = Universidade(snapshot: universidade as! FIRDataSnapshot)
//                newUniversidades.append(universidadeItem)
//            }
//            
//            // 5
//            for newUni in newUniversidades{
//                print ("Universidade-> \(newUni.nome)" )
//                print ("Descricao-> \(newUni.descricao)" )
//                print ("Key-> \(newUni.key)" )
//            }
//        })
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

