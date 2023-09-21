//
//  WebViewController.swift
//  CapitalCities
//
//  Created by Yuga Samuel on 21/09/23.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    var capital: String!
    var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let url = URL(string: "https://en.wikipedia.org/wiki/" + capital)!
        webView.load(URLRequest(url: url))
        
        webView.allowsBackForwardNavigationGestures = true
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
}
