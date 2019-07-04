//
//  DetailInfoVC.swift
//  HtmlPostIssue
//
//  Created by Rohit Kale on 03/07/19.
//  Copyright © 2019 Rohit Kale. All rights reserved.
//

import UIKit
import WebKit

class DetailInfoVC: UIViewController {

    enum DetailInfo {
        case HTMLContent
        case uiwebViewDetail
        case wkwebViewDetail
    }
    var detailInfo: DetailInfo = .HTMLContent
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch detailInfo {
        case .HTMLContent:
            loadText()
        case .uiwebViewDetail:
            loadUIWebView()
        case .wkwebViewDetail:
            loadWKWebView()
        }
    }
    
    func loadText() {
        print("loadText")
        let textView =  UITextView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        self.view.addSubview(textView)
        if let URL = Bundle.main.url(forResource: "message_zdm", withExtension: "html") {
            let htmlString = try? String(contentsOfFile: URL.path, encoding: String.Encoding.utf8)
            textView.text = htmlString
        }
    }
    func loadUIWebView() {
        print("loadUIWebView")
        let webView = UIWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        self.view.addSubview(webView)
        if let URL = Bundle.main.url(forResource: "message_zdm", withExtension: "html") {
            // do stuff
            webView.loadRequest(URLRequest(url: URL))
        }
    }
    
    func loadWKWebView() {
        print("loadWKWebView")
        let webview = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        self.view.addSubview(webview)
        if let URL = Bundle.main.url(forResource: "message_zdm", withExtension: "html") {
            // do stuff
            webview.loadFileURL(URL, allowingReadAccessTo: URL)
        }
    }
}
