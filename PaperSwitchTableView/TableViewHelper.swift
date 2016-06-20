//
//  TableViewHelper.swift
//  PaperSwitchTableView
//
//  Created by Alex K. on 20/06/16.
//  Copyright © 2016 Alex K. All rights reserved.
//

import UIKit

extension UITableView {
  func getReusableCellWithIdentifier<T: UITableViewCell where T: TableViewCellIdentifiable>(indexPath: NSIndexPath) -> T {
    guard let cell = self.dequeueReusableCellWithIdentifier(T.cellIdentifier, forIndexPath: indexPath) as? T else {
      fatalError("Couldn't instantiate view controller with identifier \(T.cellIdentifier) ")
    }
    
    return cell
  }
}

// MARK: UITableViewCell

protocol TableViewCellIdentifiable {
  static var cellIdentifier: String { get }
}

extension TableViewCellIdentifiable where Self: UITableViewCell {
  static var cellIdentifier: String {
    return String(self)
  }
}

extension UITableViewCell : TableViewCellIdentifiable { }
