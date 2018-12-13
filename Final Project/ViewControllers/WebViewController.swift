//
//  WebViewController.swift
//  Final Project
//
//  Created by Xcode User on 2018-12-09.
//  Copyright © 2018 Dhruv Patel. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet var webView : WKWebView!
    @IBOutlet var activity : UIActivityIndicatorView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlAddress = URL(string: "https://www.acura.ca")
        let url = URLRequest(url: urlAddress!)
        webView.load(url)
        webView.navigationDelegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        activity.isHidden = false
        activity.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activity.isHidden = true
        activity.stopAnimating()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
