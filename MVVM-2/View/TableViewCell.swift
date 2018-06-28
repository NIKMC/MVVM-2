//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 27/06/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fullNameLabel.text = viewModel.fullname
            ageLabel.text = viewModel.age
        }
    }
}
