//
//  ViewController.swift
//  LocalMovieDatabase
//
//  Created by Student on 5/24/17.
//  Copyright © 2017 samir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tituloTextField: UITextField!
    @IBOutlet weak var anoTextField: UITextField!
    @IBOutlet weak var diretorTextField: UITextField!
    
    @IBOutlet weak var resultadosLabel: UILabel!
    var anoInt16: Int16 {
        if let text = anoTextField.text{
            if let intValue = Int16(text){
                return intValue
            }
        }
        return 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func adicionarNovoFilme(_ sender: Any) {
        // 1.Pegar as informações que o usuário digitou
        let titulo = tituloTextField.text
        let diretor = diretorTextField.text
        let ano = anoInt16
        
        // 2. Criar um obj de Filme
        let novoFilme = Filme()
        
        novoFilme.titulo = titulo
        novoFilme.diretor = diretor
        novoFilme.ano = ano
        
        // 3. Adicionar o obj do Filme no BD
        if FilmeDAO.insert(filme: novoFilme){
            print("Filme \(novoFilme.titulo) inserido com sucesso")
        }else{
            print("Error ao inserir o Filme \(novoFilme.titulo)")
        }
        // Extra: apagar o texto dos Text Field
    }
    @IBAction func buscarTodosOsFilmes() {
        // 1.Buscar os filmes
        let filmes = FilmeDAO.buscarTodos()
        
        //2. Escrever os titulos dos filmes na label
        var titulos = ""
        
        for filme in filmes {
            titulos += "\(filme.titulo) \(filme.diretor) \(filme.ano) \n"
        }
        resultadosLabel.text = titulos
    }

}

