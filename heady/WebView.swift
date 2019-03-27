//
//  WebView.swift
//  heady
//
//  Created by Ketan Lotia on 26/03/19.
//  Copyright © 2019 Viranchee. All rights reserved.
//

import UIKit
import WebKit

class WebView: UIViewController, WKNavigationDelegate {
    var progressView: UIProgressView!
    var webView: WKWebView!
    var website: URL!

    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView

        webView.load(URLRequest(url: website))
    }

    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }

}
