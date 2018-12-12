//
//  ViewController.swift
//  CoreDataTemp
//
//  Created by alumno on 11/26/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cajaDosTextField: UITextField!
    @IBOutlet weak var cajaUnoTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func guardarButton(_ sender: UIButton) {
        
        guard let nombre = cajaUnoTextField.text, nombre.count > 0 else { return }
        guard let apellido = cajaDosTextField.text, apellido.count > 0 else { return }
        
        guard let app = UIApplication.shared.delegate as? AppDelegate else { return }
        
        let context = app.persistentContainer.viewContext
        
        let newUser = User(context: context)
        newUser.nombre = nombre
        newUser.apellido = apellido
        
        app.saveContext()
        
    }

}

