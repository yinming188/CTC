//
//  NewsController.swift
//  CTC
//
//  Created by yinming on 2018/5/13.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class NewsController: BaseViewController ,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var tab: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //uI
        title = "新闻"
        //reg
        tab.register(UINib.init(nibName: HomeTableViewCellFirstCatogaryID, bundle: nil), forCellReuseIdentifier: HomeTableViewCellFirstCatogaryID)
        tab.register(UINib.init(nibName: HomeTableViewSecondCatogaryID, bundle: nil), forCellReuseIdentifier: HomeTableViewSecondCatogaryID)
        tab.register(UINib.init(nibName: NewsSearchCellID, bundle: nil), forCellReuseIdentifier: NewsSearchCellID)
        //listen search notification
        NotificationCenter.default.addObserver(self, selector: #selector(search), name: NSNotification.Name.init(Search_NOTI_ID), object: nil)
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "1451526123078_.pic"), style: .plain, target: self, action: #selector(back))
        self.navigationController?.navigationBar.tintColor = UIColor.black
    }
    
    @objc func back(){
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //search
    @objc func search(){
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell.init()
        if indexPath.row == 0 {
            cell = tableView.dequeueReusableCell(withIdentifier: NewsSearchCellID, for: indexPath)
        }
        else {
            if indexPath.row % 2 == 1{
                cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCellFirstCatogaryID, for: indexPath)
            }
            else {
                cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewSecondCatogaryID, for: indexPath)
            }
        }
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {return 35}
        else {
            if indexPath.row % 2 == 1{
                return 150
            }
            else {
                return 110
            }
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row != 0 {
            let vc = NewsDetail.init(nibName: "NewsDetail", bundle: nil)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
