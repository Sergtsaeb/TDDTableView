//
//  GeniusesListPresenter.swift
//  TDDTableView
//
//  Created by Sergelenbaatar Tsogtbaatar on 7/29/17.
//  Copyright © 2017 Sergstaeb. All rights reserved.
//

import Foundation

class GeniusesListPresenter {
    
    let model: GeniusesModel
    var dataSet: [(name: String, skill: String)] = []
    
    init(model: GeniusesModel) {
        self.model = model
    }
    
    func viewCreated() {
        dataSet = model.fetchData()
    }
    
    func numberOfGeniuses() -> Int {
        return dataSet.count
    }
    
    func configure(cell: GeniusTableViewCell, forRow row: Int) {
        cell.display(name: dataSet[row].name)
        cell.display(skill: dataSet[row].skill)
    }
    
}
