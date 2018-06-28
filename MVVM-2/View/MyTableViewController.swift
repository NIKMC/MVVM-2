//
//  MyTableViewController.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 27/06/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {


    var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        viewModel = ViewModel()
    }
    
    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return viewModel?.numberOfRows() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell

        guard let tableViewCell = cell, let viewModel = viewModel else { return UITableViewCell() }
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
        tableViewCell.viewModel = cellViewModel

        return tableViewCell
    }
    

}