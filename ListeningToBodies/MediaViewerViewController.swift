//
//  MediaViewerViewController.swift
//  ListeningToBodies
//
//  Created by James Slusser on 7/15/19.
//  Copyright © 2019 James Slusser. All rights reserved.
//

import UIKit
import WebKit
//import PDFKit

//protocol DocumentViewControllerDelegate {
//    func didSaveDocument()
//}


//var document: PDFDocument?
//var addAnnotations = false
//var delegate: DocumentViewControllerDelegate?




class MediaViewerViewController: UIViewController {
    
    @IBAction func openPDF(_ sender: Any) {
        let url = Bundle.main.url(forResource: "Listening_With_All_Our_Senses", withExtension: "pdf")
               print(url)
               if let url = url {
                   
                   let webView = WKWebView(frame: view.frame)
                   let urlRequest = URLRequest(url: url)
                   webView.load(urlRequest)
                   view.addSubview(webView)
               }
    }
    
    @IBAction func openPDF2(_ sender: Any) {
        let url = Bundle.main.url(forResource: "Listening_to_Listening", withExtension: "pdf")
        
        if let url = url {
                 print(url)
            let webView = WKWebView(frame: view.frame)
            let urlRequest = URLRequest(url: url)
            webView.load(urlRequest)
            view.addSubview(webView)
        }
    }

    
    
//    @IBOutlet weak var pdfView: PDFView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        if let document = document {
//            pdfView.displayMode = .singlePageContinuous
//            pdfView.backgroundColor = UIColor.lightGray.withAlphaComponent(0.25)
//            pdfView.autoScales = true
//            pdfView.document = document
//
//            if addAnnotations {
//                // This will come later
//            } else {
//                navigationItem.rightBarButtonItem = nil
//            }
//        }
//    }
}
