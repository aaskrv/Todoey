//
//  SwipeTableViewController.swift
//  Todoey-iOS13
//
//  Created by Adilet on 5/19/20.
//  Copyright © 2020 Adilet. All rights reserved.
//

import UIKit
import SwipeCellKit

class SwipeTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.rowHeight = 80.0
        tableView.separatorStyle = .none
    }
    
    // MARK: - TableView DataSource
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        
        cell.delegate = self
        return cell
    }
    
    func updateModel(at indexPath: IndexPath) {
        // Update the model here
    }
}
