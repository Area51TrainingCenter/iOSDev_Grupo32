//
//  NuevoComentarioViewController.swift
//  Clase2Mod2
//
//  Created by alumno on 11/16/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class NuevoComentarioViewController: UIViewController {

    @IBOutlet weak var mensajeTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func agregarButton(_ sender: Any) {
        crearNuevoComentario()
        
        navigationController?.popViewController(animated: true)
    }
    
    func crearNuevoComentario() {
        
        let parameters = ["body": "nuevo mensaje ingresado", "postId": 1] as [String : Any]
        
        let session = URLSession.shared
        let url = URL(string: "http://localhost:3000/comments")!
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: JSONSerialization.WritingOptions.prettyPrinted)
        }catch {
            
        }

        let task = session.dataTask(with: request) { data, response, error in
            //Aqui validamos información
            
            if let _ = data {
                
                do {
                    let result = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.allowFragments)
                    print(result)
                }catch {
                    print(error.localizedDescription)
                }
                
            }else if let _ = error {
                
            }else {
                //errores no esperados
            }
            
            print(response)
        }
        task.resume()
        

    }

}
