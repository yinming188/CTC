//
//  NewsDetail.swift
//  CTC
//
//  Created by yinming on 2018/5/13.
//  Copyright © 2018年 CTCORZ. All rights reserved.
//

import UIKit

class NewsDetail: BaseViewController ,UIWebViewDelegate{
    
    @IBOutlet weak var webview: UIWebView!
    
    @IBOutlet weak var contentView: UIView!
    
    @IBOutlet weak var webViewHeight: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "新闻详情"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(image: UIImage.init(named: "1451526123078_.pic"), style: .plain, target: self, action: #selector(back))
        self.navigationController?.navigationBar.tintColor = UIColor.black
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        self.webview.loadRequest(URLRequest.init(url: URL.init(string: "https://www.baidu.com")!))
    }
    
    @objc func back(){
        self.navigationController?.popViewController(animated: true)
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
