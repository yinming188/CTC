//
//  UserSetup.swift
//  CTC
//
//  Created by yinming on 2018/5/13.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class UserCenter: BaseViewController {

    @IBOutlet weak var userPhotoButton: UIButton!
    
    //用户头像点击事件
    @IBAction func usrClick(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "个人中心"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "1451526123078_.pic"), style: .plain, target: self, action: #selector(back))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "user_set"), style: .plain, target: self, action: #selector(back))
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController?.navigationBar.tintColor = UIColor.yellow
        //
        userPhotoButton.layer.cornerRadius = 31
        userPhotoButton.layer.borderColor = UIColor.white.cgColor
        userPhotoButton.layer.borderWidth = 2
        userPhotoButton.layer.masksToBounds = true
    }
    
    @objc func back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func set(){
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
