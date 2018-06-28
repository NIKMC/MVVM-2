//
//  MyTableViewController.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 27/06/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {


    var profiles: [Profile]?
    
    override func viewDidLoad() {
        profiles = [
            Profile(name: "Ivan", secondName: "Nikitin", age: 24),
            Profile(name: "Max", secondName: "Nikitin", age: 25),
            Profile(name: "Sam", secondName: "Nikitin", age: 26)
        ]
    }
    
    // MARK: - Table view data source

   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return (profiles?.count)!
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell

        guard let tableViewCell = cell else { return UITableViewCell() }
        let profile = profiles![indexPath.row]
        tableViewCell.fullNameLabel.text = "\(profile.name) \(profile.secondName)"
        tableViewCell.ageLabel.text = "\(profile.age)"

        return tableViewCell
    }
    

}
