//
//  HomeHeaderView.swift
//  CTC
//
//  Created by yinming on 2018/5/13.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class HomeHeaderView: UIView ,UIScrollViewDelegate{

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func draw(_ rect: CGRect) {
        //
        scrollView.delegate = self
        scrollView.isPagingEnabled = true
    }
 
}
