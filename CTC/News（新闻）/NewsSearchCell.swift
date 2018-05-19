//
//  NewsSearchCell.swift
//  CTC
//
//  Created by yinming on 2018/5/13.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

let NewsSearchCellID = "NewsSearchCell"

class NewsSearchCell: UITableViewCell {

    @IBAction func Search(_ sender: UIButton) {
        Search_NOTI_POS()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
