//
//  ViewController.swift
//  HtmlPostIssue
//
//  Created by Rohit Kale on 03/07/19.
//  Copyright © 2019 Rohit Kale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actionViewHTML(_ sender: Any) {
        print("actionViewHTML")
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let detailViewController = mainStoryboard.instantiateViewController(withIdentifier: "DetailInfoVC") as! DetailInfoVC
        detailViewController.detailInfo = .HTMLContent
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    @IBAction func actionUIWebview(_ sender: Any) {
        print("actionUIWebview")
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let detailViewController = mainStoryboard.instantiateViewController(withIdentifier: "DetailInfoVC") as! DetailInfoVC
        detailViewController.detailInfo = .uiwebViewDetail
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    @IBAction func actionWKWebView(_ sender: Any) {
        print("actionWKWebView")
        let mainStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
        let detailViewController = mainStoryboard.instantiateViewController(withIdentifier: "DetailInfoVC") as! DetailInfoVC
        detailViewController.detailInfo = .wkwebViewDetail
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
}

