//
//  ProfilesProtocol.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 28/06/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int

    func cellViewModel(forIndexPath indexPaths: IndexPath) -> TableViewCellViewModelType?
    
    func viewModelForSelectedRow() -> DetailViewModelType?
    
    func selectRow(atIndexPath indexPath: IndexPath)
}
