//
//  ViewController.swift
//  WebkitSample
//
//  Created by SOORAJ SUNEESH on 2019-03-18.
//  Copyright © 2019 SOORAJ SUNEESH. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var myWeb: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //myWeb.navigationDelegate = self as! WKNavigationDelegate
       // myWeb.allowsBackForwardNavigationGestures = true
        loadFromString()
        
    }
    
    func loadFromString()
    {
        let htmlStr = "<h1>Hello World</h1>"
        myWeb.loadHTMLString(htmlStr, baseURL: nil)
    }
    
    func loadFromFile()
    {
        let localfilePath = Bundle.main.url(forResource: "home", withExtension: "html")
        let myRequest = URLRequest(url: localfilePath!)
        myWeb.load(myRequest)
        
    }
    
    func loadFromUrl()
    {
        //let url = URL(string: "https://www.youtube.com/watch?v=xQmZSKxOYvs")
        let url = URL(string: "https://www.google.com")
        let urlReq = URLRequest(url: url!)
        myWeb.load(urlReq)
    }
    
    
    /*
     // MARK: - Navigation
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
