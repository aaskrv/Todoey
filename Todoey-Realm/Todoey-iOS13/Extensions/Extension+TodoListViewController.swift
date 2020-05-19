//
//  Extension+TodoListViewController.swift
//  Todoey-iOS13
//
//  Created by Adilet on 5/20/20.
//  Copyright © 2020 Adilet. All rights reserved.
//

import UIKit
    
extension TodoListViewController: UISearchBarDelegate {

    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        
        todoItems = todoItems?.filter("title CONTAINS[cd] %@", searchBar.text!).sorted(byKeyPath: "dateCreated", ascending: true)
        
        tableView.reloadData()
    }

    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        if searchBar.text?.count == 0 {
            loadItems()

            DispatchQueue.main.async {
                self.searchBar.resignFirstResponder()
            }
        }
    }

}
