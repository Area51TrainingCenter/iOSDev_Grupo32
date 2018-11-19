//
//  ViewController.swift
//  Clase2Mod1
//
//  Created by alumno on 10/29/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nombreyapellidoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nombreyapellidoLabel.text = "Área 51 Training Center"
        nombreyapellidoLabel.textColor = UIColor.red
        
    }

}

