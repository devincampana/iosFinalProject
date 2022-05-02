//
//  ETHViewController.swift
//  moneyConversion
//
//  Created by Devin Campaña on 4/26/22.
//

import Foundation
import UIKit
import WebKit

class ETHViewController: UIViewController, WKNavigationDelegate {
    

     @IBOutlet weak var webView: WKWebView!
     

  let sampleURL = "https://www.coindesk.com/price/ethereum/"
     override func viewDidLoad() {
         super.viewDidLoad()
         self.sendRequest(urlString: sampleURL)

         // Do any additional setup after loading the view.
     }

     func sendRequest(urlString: String) {
         let myURL = URL(string: urlString)
         let myRequest = URLRequest(url: myURL!)
         webView.load(myRequest)
     }
}
