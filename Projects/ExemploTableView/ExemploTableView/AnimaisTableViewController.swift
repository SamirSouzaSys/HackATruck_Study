//
//  AnimaisTableViewController.swift
//  ExemploTableView
//
//  Created by Tiago - Eldorado on 12/9/16.
//  Copyright © 2016 Tiago - Eldorado. All rights reserved.
//

import UIKit

class AnimaisTableViewController: UITableViewController {

    // 1) Inicializando o nosso array de animais
    //      - A classe Animal está definida no arquivo Animal.swift
    var animais = [Animal]()
    
    // O método viewDidLoad() é chamado após a view ser alocada em memória
    // Lugar ideal apra fazer inicializações
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 2) Buscamos os dados para serem exibidos na nossa lista
        animais = AnimalDAO.getList()
    }

    // MARK: - Table view data source
    
    // 4) Função que define o numero de SEÇÕES que nossa tableview tem
    override func numberOfSections(in tableView: UITableView) -> Int {
        // Para esse exemplo só teremos 1 seção
        return 1
    }

    // 5) Função que diz quantas LINHAS nossa table view tem em cada SEÇÃO
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Precisamos do mesmo número de linhas que o número de
        // objetos no nosso array de animais
        return animais.count
    }

    // 6) Função para popular as células da tabela com conteúdo
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Primeiro pegamos a célula que queremos configurar
        // - Atenção no IDENTIFIER ("animalIdentifier"),
        //    tem que associar ele na TableViewCell no storyboard (atributo Identifier)
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalIdentifier", for: indexPath)

        // Convertemos a célula em uma AnimalTableViewCell para termos acesso aos Outlet's
        if let animalCell = cell as? AnimalTableViewCell {
            // Identificamos qual animal iremos usar pelo indexPath.row
            let animal = animais[indexPath.row]
            
            // Configuramos os outlets da animalCell
            animalCell.nomeLabel.text = animal.nome
            animalCell.espécieLabel.text = animal.espécie
            
            animalCell.fotoDoAnimal.image = UIImage(named: animal.nomeDaFoto)

            // Temos que retornar a animalCell ao fim da configuração
            return animalCell
        }

        return cell
    }

}
