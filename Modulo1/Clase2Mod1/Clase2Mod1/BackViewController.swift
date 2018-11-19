//
//  BackViewController.swift
//  Clase2Mod1
//
//  Created by alumno on 10/29/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class BackViewController: UIViewController {

    @IBAction func backBoton(_ sender: UIButton) {
        /*
        //Modal
        dismiss(animated: true, completion: nil)*/
        
        //Back
        navigationController?.popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
