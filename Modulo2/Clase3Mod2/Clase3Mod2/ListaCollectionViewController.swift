//
//  ListaCollectionViewController.swift
//  Clase3Mod2
//
//  Created by alumno on 11/19/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ListaCollectionViewController: UICollectionViewController {

    var width: CGFloat!
    var people: [Persona] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        width = UIScreen.main.bounds.size.width-2
        people = Persona.data()
        /*
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: (width/3), height: 100)*/
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nav = segue.destination as! UINavigationController
        let detail = nav.topViewController as! NuevoViewController
        detail.delegate = self //Paso 3
        
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        /*
        if people.count > 0 {
            return 1
        }else {
            return 0
        }*/
        
        return people.count > 0 ? 1 : 0
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return people.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let person = people[indexPath.row]
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "testCell", for: indexPath) as! ItemViewCell
        cell.numeroLabel.text = person.pais //String(indexPath.row+1)
        
        if person.status == .feliz {
            cell.backgroundColor = UIColor.yellow
        }else {
            cell.backgroundColor = UIColor.black
        }

        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("seleccionado")
    }

}

extension ListaCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (width/3), height: 100)
        
    }
    
}

extension ListaCollectionViewController: NuevoViewControllerDelegate { //Paso 1
    
    //Paso 2
    func nuevaPersona(_ persona: Persona) {
        
        people.append(persona)
        collectionView.reloadData()
        
    }
    
}
