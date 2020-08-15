//
//  ViewController.swift
//  ReadMe
//
//  Created by Ernest Godlewski on 15/08/2020.
//  Copyright © 2020 Ernest Godlewski. All rights reserved.
//

import UIKit

class LibraryViewController: UITableViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK:- DataSource
    override func numberOfSections(in tableView: UITableView) -> Int {
        50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath)
        let book = Book(title: "Title \(indexPath)", author: "Author \(indexPath)", image: UIImage(systemName: "\(indexPath.row).sqare.fill")!)
        cell.textLabel?.text = book.title
        cell.imageView?.image = book.image
        return cell
    }
}

