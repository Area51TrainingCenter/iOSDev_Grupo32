//
//  PostDetailViewController.swift
//  Clase2Mod2
//
//  Created by alumno on 11/16/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class PostDetailViewController: UITableViewController {
    
    var selectedPost: [String: Any]!
    
    var comments: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewDidDisappear(_ animated: Bool) {
        comments.append("comentario")
        tableView.reloadData()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? 1 : comments.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        
        if indexPath.section == 0 {
            cell.textLabel?.text = selectedPost["author"] as! String
        }else {
            let comment = comments[indexPath.row]
            cell.textLabel?.text = comment + " " + String(indexPath.row)
            cell.detailTextLabel?.text = nil
        }

        return cell
    }

}
