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
        
        // INSERTING DATA UNIVERSIDADE
        let universidadeItem1 = Universidade(nome: "Universidade Federal do Maranhão",
                                            descricao: "descricao ufma",
                                            key: "")
        let universidadeItem2 = Universidade(nome: "Universidade Estadual do Maranhão",
                                             descricao: "descricao uema",
                                             key: "")
        let universidadeItem3 = Universidade(nome: "Instituto federal de Educação, Ciência e Tecnologia",
                                             descricao: "descricao ifma",
                                             key: "")

        self.universidades.append(universidadeItem1)
        self.universidades.append(universidadeItem2)
        self.universidades.append(universidadeItem3)
        
        for uni in universidades {
            let universidadeItemRef = ref.child(uni.nome.lowercased())
            
            universidadeItemRef.setValue(uni.toAnyObject())
        }
        
        // RETRIEVING DATA UNIVERSIDADE
        ref.observe(.value, with: { snapshot in
//            var newUniversidades: [Universidade] = []
            
            for universidade in snapshot.children {
                // 4
                let universidadeItem = Universidade(snapshot: universidade as! FIRDataSnapshot)
                self.universidades.append(universidadeItem)
            }
            
            let emBusca:String = "Universidade Federal do Maranhão"
            
            // 5
            for newUni in self.universidades{
                if(newUni.nome == emBusca){
                    print ("Universidade-> \(newUni.nome)" )
                    print ("Descricao-> \(newUni.descricao)" )
                    print ("Key-> \(newUni.key)" )
                }
            }
        })
        
        
        
        // INSERTING DATA CURSO
//                let curso1 = Curso( key: "", titulo: "Ciência da computação", descricao: "Corre Bino!", imagem: "Minha string de imagem", conteudo: "", link: "")
//                let curso2 = Curso( key: "", titulo: "Bacharelado Interdisciplinar em ciência e tecnologia", descricao: "Rapaaaz!", imagem: "Minha string de imagem", conteudo: "", link: "")
//                let curso3 = Curso( key: "", titulo: "Engenharia da computação", descricao: "Não faça isso!", imagem: "Minha string de imagem", conteudo: "", link: "")
//        
//                self.cursos.append(curso1)
//                self.cursos.append(curso2)
//                self.cursos.append(curso3)
//        
//                for curso in cursos {
////                    let cursoItemRef = ref.child(curso.titulo.lowercased()).child("curso")
//                    
//                    let universidadeSearched = "universidade federal do maranhão"
//                    if let uniExample = universidades.filter({$0.nome == universidadeSearched}).first {
//                        ref.child(uniExample).child("curso").setValue(curso.toAnyObject())
//                    }
//                    
//                    
//                }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

