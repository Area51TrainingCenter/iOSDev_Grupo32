//
//  ViewController.swift
//  Clase3Mod1
//
//  Created by alumno on 10/31/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK: Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func manualButton(_ sender: Any) {
        
        performSegue(withIdentifier: "manualSegue", sender: nil)
        
    }
    
    //MARK: Navigation
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //print("prepareforsegue")
        
        if let vc = segue.destination as? DetailViewController {
            vc.score = 10
        }else {
            
        }
        
        /*
        if segue.identifier == "manualSegue" {
            print("manualSegue")
        }else if segue.identifier == "normalSegue" {
            print("normalSegue")
        }*/
        
    }

}

