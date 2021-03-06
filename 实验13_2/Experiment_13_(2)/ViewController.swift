//
//  ViewController.swift
//  Experiment_13_(2)
//
//  Created by student on 2018/12/12.
//  Copyright © 2018年 QYS. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var urlTF: UITextField!
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let url = URL(string:"http://www.baidu.com"){
            webView.load(URLRequest(url: url))
        }
    }
    @IBAction func Go(_ sender: Any) {
        if let url = URL(string: urlTF.text ?? ""){
            webView.load(URLRequest(url: url))
        }
    }
    @IBAction func back(_ sender: Any) {
        webView.goBack()
    }
    @IBAction func reload(_ sender: Any) {
        webView.reload()
    }
    @IBAction func forward(_ sender: Any) {
        webView.goForward()
    }
}

