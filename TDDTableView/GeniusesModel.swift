//
//  GeniusesModel.swift
//  TDDTableView
//
//  Created by Sergelenbaatar Tsogtbaatar on 7/29/17.
//  Copyright © 2017 Sergstaeb. All rights reserved.
//

import Foundation

class GeniusesModel {
    private let data = [ (name: "Randal", skill: "Be invisible"),
                         (name: "Kinping", skill: "Pure strength"),
                         (name: "Donkey Kong", skill: "Throw many barells"), ]
    func fetchData() -> [(name: String, skill: String)] {
        return data
    }
}
