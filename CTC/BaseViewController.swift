//
//  BaseViewController.swift
//  CTC
//
//  Created by yinming on 2018/5/13.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController,UIGestureRecognizerDelegate,UINavigationControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
