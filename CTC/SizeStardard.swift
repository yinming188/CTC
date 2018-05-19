//
//  SizeStardard.swift
//  CTC
//
//  Created by yinming on 2018/5/12.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit
import Foundation

let Screen_width:CGFloat = UIScreen.main.bounds.width
let Screen_height:CGFloat = UIScreen.main.bounds.height

func kRGBColorFromHex(_ rgbValue: Int) -> (UIColor) {
    
    return UIColor(red: ((CGFloat)((rgbValue & 0xFF0000) >> 16)) / 255.0,
                   green: ((CGFloat)((rgbValue & 0xFF00) >> 8)) / 255.0,
                   blue: ((CGFloat)(rgbValue & 0xFF)) / 255.0,
                   alpha: 1.0)
}

//登录通知
let LOGIN_NOTI_ID = "Login"
func LOGIN_NOTI_POS(){
    NotificationCenter.default.post(name: NSNotification.Name.init(LOGIN_NOTI_ID), object: nil)
}

//搜索通知
let Search_NOTI_ID = "Search"
func Search_NOTI_POS(){
    NotificationCenter.default.post(name: NSNotification.Name.init(Search_NOTI_ID), object: nil)
}

//个人中心通知
let UserInfo_NOTI_ID = "UserInfo"
func UserInfo_NOTI_POS(){
    NotificationCenter.default.post(name: NSNotification.Name.init(UserInfo_NOTI_ID), object: nil)
}

//任务通知
let Catalog_NOTI_ID = "Catalog"
func Catalog_NOTI_POS(){
    NotificationCenter.default.post(name: NSNotification.Name.init(Catalog_NOTI_ID), object: nil)
}
