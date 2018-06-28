//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Ivan Nikitin on 28/06/2018.
//  Copyright © 2018 Иван Никитин. All rights reserved.
//

import Foundation
class ViewModel: TableViewViewModelType {
    var profiles = [Profile(name: "Ivan", secondName: "Nikitin", age: 24),
                           Profile(name: "Max", secondName: "Pain", age: 25),
                           Profile(name: "John", secondName: "Smith", age: 26)]

    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
   
    
}
