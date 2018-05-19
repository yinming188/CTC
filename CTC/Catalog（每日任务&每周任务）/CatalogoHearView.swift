//
//  CatalogoHearView.swift
//  CTC
//
//  Created by yinming on 2018/5/15.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class CatalogoHearView: UIView {
    
    @IBOutlet weak var leftBT: UIButton!
    
    @IBOutlet weak var rightBT: UIButton!
    
    @IBOutlet weak var leftSlipView: UIView!
    
    @IBAction func left(_ sender: UIButton) {
        var con : NSLayoutConstraint?
        for cons in self.constraints{
            if cons.priority.rawValue == 900 {
                con = cons
            }
        }
        self.removeConstraint(con!)
        if con != nil {
            con = NSLayoutConstraint.init(item: leftSlipView, attribute: .centerX, relatedBy: .equal, toItem: leftBT, attribute: .centerX, multiplier: 1.0, constant: 0)
            con?.priority = UILayoutPriority.init(900)
            UIView.animate(withDuration: 0.15) {
                self.addConstraint(con!)
                self.layoutIfNeeded()
                self.leftBT.setTitleColor(kRGBColorFromHex(0x333333), for:UIControlState.normal)
                self.rightBT.setTitleColor(kRGBColorFromHex(0x949494), for: UIControlState.normal)
            }
        }
        else {print("erro2200")}
    }
    
    @IBAction func right(_ sender: Any) {
        var con : NSLayoutConstraint?
        for cons in self.constraints{
            if cons.priority.rawValue == 900 {
                con = cons
            }
        }
        self.removeConstraint(con!)
        if con != nil {
            con = NSLayoutConstraint.init(item: leftSlipView, attribute: .centerX, relatedBy: .equal, toItem: rightBT, attribute: .centerX, multiplier: 1.0, constant: 0)
            con?.priority = UILayoutPriority.init(900)
            UIView.animate(withDuration: 0.15) {
                self.addConstraint(con!)
                self.layoutIfNeeded()
                self.leftBT.setTitleColor(kRGBColorFromHex(0x949494), for:UIControlState.normal)
                self.rightBT.setTitleColor(kRGBColorFromHex(0x333333), for: UIControlState.normal)
            }
        }
        else {print("erro2200")}
    }
    
    
    override func draw(_ rect: CGRect) {
        for cons in self.constraints{
            if cons.priority.rawValue == 900 {
            }
        }
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
