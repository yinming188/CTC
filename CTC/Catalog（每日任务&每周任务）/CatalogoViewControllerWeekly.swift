//
//  CatalogoViewControllerWeekly.swift
//  CTC
//
//  Created by yinming on 2018/5/15.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class CatalogoViewControllerWeekly: BaseViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var contentTable: UITableView!
    
    weak var headerView:UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "任务"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "1451526123078_.pic"), style: .plain, target: self, action: #selector(back))
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.contentTable.register(UINib.init(nibName: CatalogCellID, bundle: nil), forCellReuseIdentifier: CatalogCellID)
        self.contentTable.register(UINib.init(nibName: CatalogSecondCellID, bundle: nil), forCellReuseIdentifier: CatalogSecondCellID)
        //
        self.contentTable.tableHeaderView = Bundle.main.loadNibNamed("CatalogoHearView", owner: self, options: nil)?.first as! CatalogoHearView
        self.contentTable.tableHeaderView?.backgroundColor = UIColor.white
        self.headerView = self.contentTable.tableHeaderView
    }
    
    @objc func back(){
        self.navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CatalogCellID, for: indexPath) as! CatalogCell
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CaseDetailController.init(nibName: "CaseDetailController", bundle: nil)
        navigationController?.pushViewController(vc, animated:true)
    }

}
