//
//  LoginViewController.swift
//  CTC
//
//  Created by yinming on 2018/5/12.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "登录"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "1451526123078_.pic"), style: .plain, target: self, action: #selector(back))
        self.navigationController?.navigationBar.tintColor = UIColor.black
    }

    @objc func back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
