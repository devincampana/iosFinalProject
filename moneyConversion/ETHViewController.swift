//
//  ETHViewController.swift
//  moneyConversion
//
//  Created by Devin Campaña on 5/2/22.
//

import Foundation
import UIKit
import WebKit

class ETHViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var textView: UITextView!
    override func viewDidLoad() {
        let attributedString = NSMutableAttributedString(string: "Live Bitcoin Exchange")
        attributedString.addAttribute(.link, value: "https://www.livecoinwatch.com/", range: NSRange(location: 19, length: 55))
        textView.attributedText = attributedString
    }
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        UIApplication.shared.open(URL)
        return false
    }
}

