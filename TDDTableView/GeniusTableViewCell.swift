//
//  GeniusTableViewCell.swift
//  TDDTableView
//
//  Created by Sergelenbaatar Tsogtbaatar on 7/29/17.
//  Copyright © 2017 Sergstaeb. All rights reserved.
//

import Foundation
import UIKit

class GeniusTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var skillLabel: UILabel!
    
    func display(name: String) {
        nameLabel?.text = name
    }
    
    func display(skill: String) {
        skillLabel?.text = skill
    }
}
