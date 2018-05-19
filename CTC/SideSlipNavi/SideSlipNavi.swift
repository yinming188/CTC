//
//  SideSlipNavi.swift
//  CTC
//
//  Created by yinming on 2018/5/12.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class SideSlipNavi: UINavigationController {
    
    var sappDelagate : AppDelegate?
    
    var srootVIew : UIView?
    
    var xDistance:CGFloat = 150
    
    convenience init(rootViewController: BaseViewController,_ appDelagate:AppDelegate,_ rootVIew:UIView,_ distance:CGFloat) {
        self.init(rootViewController: rootViewController)
        sappDelagate = appDelagate
        srootVIew = rootVIew
        xDistance = distance
        appDelagate.window?.addSubview(rootVIew)
        //style
        self.navigationBar.tintColor = UIColor.black
        //
        let bt = UIButton.init(frame: CGRect.init(x:UIScreen.main.bounds.width-xDistance , y: 0, width: xDistance, height: UIScreen.main.bounds.height))
        srootVIew?.addSubview(bt)
        bt.addTarget(self, action: #selector(slipToOrigin), for: UIControlEvents.touchUpInside)
        //noti
        NotificationCenter.default.addObserver(self, selector: #selector(login), name: NSNotification.Name.init(LOGIN_NOTI_ID), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(userinfo), name: NSNotification.Name.init(UserInfo_NOTI_ID), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(catalog), name: NSNotification.Name.init(Catalog_NOTI_ID), object: nil)
        //
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func slipToRight(){
        UIView.animate(withDuration: 0.3, animations: {
            self.view.transform = CGAffineTransform(a: 0.9, b: 0, c: 0, d: 0.9, tx: UIScreen.main.bounds.width - self.xDistance, ty: 0)
        }) { (_) in
            self.view.isUserInteractionEnabled = false
        }
    }
    
    @objc func slipToOrigin(){
        UIView.animate(withDuration: 0.3, animations: {
            self.view.transform = CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: 0, ty: 0)
        }) { (_) in
            self.view.isUserInteractionEnabled = true
        }
    }
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    //登录通知
    @objc func login(){
        let vc = LoginViewController.init(nibName: "LoginViewController", bundle: nil)
        self.pushViewController(vc, animated: true)
    }
    
    //个人中心通知
    @objc func userinfo(){
        let vc = UserCenter.init(nibName: "UserCenter", bundle: nil)
        self.pushViewController(vc, animated: true)
    }
    
    //限时任务
    @objc func catalog(){
        let vc = CatalogoViewControllerWeekly.init(nibName: "CatalogoViewControllerWeekly", bundle: nil)
        self.pushViewController(vc, animated: true)
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        self.view.isUserInteractionEnabled = true
        self.view.transform = CGAffineTransform(a: 1, b: 0, c: 0, d: 1, tx: 0, ty: 0)
        super.pushViewController(viewController, animated: animated)
    }

}
