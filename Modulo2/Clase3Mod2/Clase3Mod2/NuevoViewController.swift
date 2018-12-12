//
//  NuevoViewController.swift
//  Clase3Mod2
//
//  Created by alumno on 11/19/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

protocol NuevoViewControllerDelegate: class { //Paso 1
    func nuevaPersona(_ persona: Persona)
}

class NuevoViewController: UIViewController {

    @IBOutlet weak var cajaDosTextField: UITextField!
    @IBOutlet weak var cajaUnoTextField: UITextField!
    
    weak var delegate: NuevoViewControllerDelegate? //Paso 2
    
    override func viewDidLoad() {
        super.viewDidLoad()

        Persona(data: [:])
        Persona(nombre: "", pais: "")
        
    }
    
    //MARK: IBAction methods
    @IBAction func addAction(_ sender: Any) {
        
        guard let nombre = cajaUnoTextField.text, nombre.count > 0 else { return }
        
        guard let pais = cajaDosTextField.text, pais.count > 0 else { return }
        
        let raul = Persona(nombre: nombre, pais: pais)
        
        dismiss(animated: true) {
            self.delegate?.nuevaPersona(raul) //Paso 3
        }
        
    }
    @IBAction func closeAction(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
