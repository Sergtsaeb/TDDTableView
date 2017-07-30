//
//  GeniusesTableViewController.swift
//  TDDTableView
//
//  Created by Sergelenbaatar Tsogtbaatar on 7/29/17.
//  Copyright © 2017 Sergstaeb. All rights reserved.
//

import UIKit

class GeniusesTableViewController: UITableViewController {
    
    static let ID = "GeniusesTableViewControllerID"
    var presenter: GeniusesListPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpForDynamicHeightCells()
        presenter?.viewCreated()
    }
    
    func setUpForDynamicHeightCells() {
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 56.0
    }

    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.numberOfGeniuses() ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GeniusTableViewCell
        presenter?.configure(cell: cell, forRow: indexPath.row)

        return cell
    }
 

}
