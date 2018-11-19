//
//  DetailViewController.swift
//  Clase3Mod1
//
//  Created by alumno on 10/31/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var scoreLabel: UILabel!
    var score: Int!

    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = String(score)
    }

}
