//
//  ViewController.swift
//  WebViewURLProtocolDemo
//
//  Created by tanghongkang on 2017/5/20.
//  Copyright © 2017年 tanghongkang.cn. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIWebViewDelegate{
    
    fileprivate var webView: UIWebView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = UIWebView(frame: view.bounds)
        view.addSubview(webView!)
        
        if let url = URL(string: "https://www.baidu.com") {
            webView?.loadRequest(URLRequest(url: url))
        }
        
        webView?.delegate = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        print(request.url!.absoluteString)
        
        return true
    }
}

class WebViewURLProtocol: URLProtocol {
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }
    
}



