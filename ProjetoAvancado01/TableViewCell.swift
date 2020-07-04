//
//  TableViewCell.swift
//  ProjetoAvancado01
//
//  Created by Frederyk Antunnes on 04/07/20.
//  Copyright © 2020 Frederyk Antunnes. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var lbDetails: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func prepare(with task: Array<String>) {
        lbTitle.text = task[0]
        lbDetails.text = task[1]
    }

}
