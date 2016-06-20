//
//  TableViewController.swift
//  PaperSwitchTableView
//
//  Created by Alex K. on 20/06/16.
//  Copyright © 2016 Alex K. All rights reserved.
//

import UIKit

public class TableViewController: UITableViewController {
  
  

}

// MARK: UITableViewDataSource

extension TableViewController {
  
  public override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }
  
  public override func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
//    guard case let cell as CustomTableViewCell = cell else {
//      return
//    }
    
    
  }
  
  public override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell: TableViewCell = tableView.getReusableCellWithIdentifier(indexPath)
    return cell
  }
}
