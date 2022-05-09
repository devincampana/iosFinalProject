//
//  ViewController1.swift
//  moneyConversion
//
//  Created by Devin Campaña on 5/2/22.
//

import Foundation
import UIKit
import WebKit

class ViewController1: UIViewController, WKNavigationDelegate {
    @IBOutlet var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://finance.yahoo.com/currencies")!
        webView.allowsBackForwardNavigationGestures = true
    }

   
    
    
}



