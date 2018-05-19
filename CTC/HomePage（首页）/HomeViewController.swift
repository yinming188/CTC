//
//  HomeViewController.swift
//  CTC
//
//  Created by yinming on 2018/5/12.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController,UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = UITableViewCell.init()
        
        switch indexPath.row {
            
        case 0:
             cell = tableView.dequeueReusableCell(withIdentifier: HomeMoreCellID, for: indexPath)
        case 1:
             cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCellFirstCatogaryID, for: indexPath)
        default:
             cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewSecondCatogaryID, for: indexPath)
        }
        
        cell.selectionStyle = .none

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        if indexPath.row == 2 {return 150}
        if indexPath.row == 0 {return 46}
        
        return 110
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 1 {
            newsList()
        }
        if  indexPath.row >= 2 {
            let vc = NewsDetail.init(nibName: "NewsDetail", bundle: nil)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBOutlet weak var hometable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "主页"
        //leftnavibar
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "home_nav_btn_menu"), style: .done, target: self.navigationController, action: #selector(SideSlipNavi.slipToRight))
        //rightnavibar
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "home_nav_btn_limitask"), style: .done, target: self, action: #selector(cases))
        //reg
        self.hometable.register(UINib.init(nibName: HomeTableViewCellFirstCatogaryID, bundle: nil), forCellReuseIdentifier: HomeTableViewCellFirstCatogaryID)
        self.hometable.register(UINib.init(nibName: HomeTableViewSecondCatogaryID, bundle: nil), forCellReuseIdentifier: HomeTableViewSecondCatogaryID)
        self.hometable.register(UINib.init(nibName: HomeHeaderCellID, bundle: nil), forCellReuseIdentifier: HomeHeaderCellID)
        self.hometable.register(UINib.init(nibName: HomeMoreCellID, bundle: nil), forCellReuseIdentifier: HomeMoreCellID)
        //table-header-view
        self.hometable.tableHeaderView = Bundle.main.loadNibNamed("HomeHeaderView", owner: self, options: nil)?.first as! HomeHeaderView
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.tintColor = UIColor.black
    }
    
    //新闻列表
    func newsList(){
        let vc = NewsController.init(nibName: "NewsController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }
    
    //任务
    @objc func cases(){
        let vc = CatalogViewController.init(nibName: "CatalogViewController", bundle: nil)
        navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
