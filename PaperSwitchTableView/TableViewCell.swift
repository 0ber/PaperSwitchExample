//
//  TableViewCell.swift
//  PaperSwitchTableView
//
//  Created by Alex K. on 20/06/16.
//  Copyright © 2016 Alex K. All rights reserved.
//

import UIKit
import RAMPaperSwitch

class TableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
      
      let pSwitch = RAMPaperSwitch(view: contentView, color: .redColor())
      pSwitch.setOn(true, animated: false)
      contentView.addSubview(pSwitch)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
