//
//  LIstaViewController.swift
//  Clase8Mod1
//
//  Created by alumno on 11/12/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class LIstaViewController: UIViewController  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var textos = [[String: String]]()
    
    //MARK: Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: IBAction methods
    @IBAction func addButton(_ sender: UIBarButtonItem) {
        performSegue(withIdentifier: "detalleSegue", sender: nil)
    }
    
    //MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let detail = segue.destination as! NuevoViewController
        detail.delegate = self // Paso 3
        
    }

}

extension LIstaViewController: NuevoViewControllerDelegate { //Paso 1 & 2
    
    func nuevoTexto(_ text: [String : String]) {
        textos.append(text)
        tableView.reloadData()
    }
    
}

extension LIstaViewController: UITableViewDataSource & UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! ItemViewCell
        
        let textoDic = textos[indexPath.row]
        let valor = textoDic["texto"]
        
        cell.textoLabel.text = valor
        return cell
        
    }
    
}

