//
//  T1.swift
//  CTC
//
//  Created by yinming on 2018/5/10.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class T1: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func move() -> Void {
        UIView.animate(withDuration: 0.5) {
                   self.navigationController?.view.frame = CGRect.init(x: 200, y: 0, width: 414, height: 600)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
