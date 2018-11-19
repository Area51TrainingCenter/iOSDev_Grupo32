//
//  ModalViewController.swift
//  Clase2Mod1
//
//  Created by alumno on 10/29/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ModalViewController: UIViewController {

    @IBAction func closeButton(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    
    @IBAction func testButton() {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
