//
//  ListaPostsViewController.swift
//  Clase2Mod2
//
//  Created by alumno on 11/16/18.
//  Copyright © 2018 Area51. All rights reserved.
//

import UIKit

class ListaPostsViewController: UITableViewController {
    
    var posts: [[String: Any]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let post = ["id": 1, "title": "json-server", "author": "typicode"] as [String : Any]
        posts.append(post)
        
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "postdetailSegue" {
            
            let indexPath = tableView.indexPathForSelectedRow!
            
            let detail = segue.destination as! PostDetailViewController
            detail.selectedPost = posts[indexPath.row]

        }

    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        
        let post = posts[indexPath.row]
        cell.textLabel?.text = post["title"] as? String
        cell.detailTextLabel?.text = post["author"] as? String

        return cell
    }


}
