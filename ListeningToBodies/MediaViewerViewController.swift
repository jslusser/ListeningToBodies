//
//  MediaViewerViewController.swift
//  ListeningToBodies
//
//  Created by James Slusser on 7/15/19.
//  Copyright © 2019 James Slusser. All rights reserved.
//

import UIKit
import WebKit

class MediaViewerViewController: UIViewController {
    
    @IBAction func openPDF(_ sender: Any) {
        let url = Bundle.main.url(forResource: "Listening_With_All_Our_Senses", withExtension: "pdf")
        //    print(url)
        if let url = url {
            let vc = UIViewController()
            let webView = WKWebView(frame: view.frame)
            vc.view.addSubview(webView)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            // view.addSubview(webView)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func openPDF2(_ sender: Any) {
        let url = Bundle.main.url(forResource: "Listening_to_Listening", withExtension: "pdf")
        //      print(url)
        if let url = url {
            let vc = UIViewController()
            let webView = WKWebView(frame: view.frame)
            vc.view.addSubview(webView)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            // view.addSubview(webView)
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
