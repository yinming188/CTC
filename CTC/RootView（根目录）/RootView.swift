//
//  RootView.swift
//  CTC
//
//  Created by yinming on 2018/5/12.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class RootView: UIView,UITableViewDelegate,UITableViewDataSource {
    var rootViewWidth:CGFloat = 200
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        addSubviews()
    }
    //添加子视图
    func addSubviews(){
        //headerView
        let rootHeader = Bundle.main.loadNibNamed("RootViewTableHeader", owner: self, options: nil)?.first as! RootViewTableHeader
        self.addSubview(rootHeader)
        rootHeader.frame = CGRect.init(x: 0, y: 0, width: Screen_width, height: 225)
        
        //tab
        let tab = UITableView.init(frame: CGRect.init(x: 0, y: rootHeader.bounds.height, width: rootViewWidth, height: self.bounds.height))
        self.addSubview(tab)
        //style
        tab.separatorStyle = .none
        //header
        
        //cell
        tab.register(UINib.init(nibName: RootViewCellID, bundle: nil), forCellReuseIdentifier: RootViewCellID)
        tab.delegate = self
        tab.dataSource = self
        
        //loginbutton
        let loginbutton = UIButton.init(frame: CGRect.init(x:rootViewWidth - 150 , y: Screen_height - 82, width: 120, height: 32))
        self.addSubview(loginbutton)
        
        loginbutton.backgroundColor = kRGBColorFromHex(0xfccd35)
        loginbutton.layer.cornerRadius = 4
        loginbutton.layer.masksToBounds = true
        loginbutton.setTitle("登录", for:.normal)
        loginbutton.setTitleColor(kRGBColorFromHex(0x333333), for: .normal)
        loginbutton.addTarget(self, action: #selector(login), for: .touchUpInside)
        
        //button 提前
        for view in self.subviews {
            if view.isMember(of: UIButton.self){
                self.bringSubview(toFront: view)
            }
        }
    }
    
    @objc func login(){
        LOGIN_NOTI_POS()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: RootViewCellID, for: indexPath) as!RootViewCell
        switch indexPath.row {
        case 0:
            cell.cellLabel.text = "限时任务"
            cell.cellImage.image = UIImage.init(named: "menu_btn_limitask")
        case 1:
            cell.cellLabel.text = "个人中心"
            cell.cellImage.image = UIImage.init(named: "menu_btn_user")
        case 2:
            cell.cellLabel.text = "奖励金币"
            cell.cellImage.image = UIImage.init(named: "menu_btn_coin")
        case 3:
            cell.cellLabel.text = "新闻"
            cell.cellImage.image = UIImage.init(named: "menu_btn_news")
        default:break
        }
        //style
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            Catalog_NOTI_POS()
        case 1:
            UserInfo_NOTI_POS() //发通知处理
        case 2:print(indexPath.row)
        case 3:print(indexPath.row)
        default:
            break
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
