//
//  NuevoViewController.swift
//  Clase8Mod1
//
//  Created by alumno on 11/12/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

protocol NuevoViewControllerDelegate: class { //Paso 1
    func nuevoTexto(_ text: [String: String])
}

class NuevoViewController: UITableViewController {
    
    weak var delegate: NuevoViewControllerDelegate? //Paso 2

    //MARK: Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: IBAction method
    @IBAction func doneButton(_ sender: Any) {
        
        /*
        let indexPath = IndexPath(row: 0, section: 0)
        let cell = tableView.cellForRow(at: indexPath)
        
        if let formularioCell = cell as? FormularioViewCell {
            let texto = formularioCell.cajaTextField.text
        }*/
        
        guard let cell = tableView.cellForRow(at: IndexPath(row: 0, section: 0)) else { return }
        
        guard let formularioCell = cell as? FormularioViewCell else { return }
        
        guard let text = formularioCell.cajaTextField.text else { return }
        
        guard text.count > 0 else { return }
        
        /*
         1.- Crear un dictionary
         2.- Enviar dictionary a la lista
         3.- Actualizar lista
         4.- Retornar a la lista
 */
        let nuevoRegistro = ["texto": text]
        delegate?.nuevoTexto(nuevoRegistro) //Paso 3
        navigationController?.popViewController(animated: true)
        
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "formularioCell", for: indexPath) as! FormularioViewCell
        return cell
        
    }

}
