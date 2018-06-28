//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 28/06/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullname: String { get }
    var age: String { get }
}
