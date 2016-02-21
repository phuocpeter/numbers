//
//  GuideViewController.swift
//  Numbers
//
//  Created by Tran Thai Phuoc on 2016-02-20.
//  Copyright © 2016 Tran Thai Phuoc. All rights reserved.
//

import UIKit

class GuideViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let url = NSLocalizedString("Numbers Manual" , comment: "Numbers Manual")
        if let htmlFile = NSBundle.mainBundle().pathForResource(url, ofType: "html") {
            if let htmlData = NSData(contentsOfFile: htmlFile) {
                let baseUrl = NSURL(fileURLWithPath: NSBundle.mainBundle().bundlePath)
                webView.loadData(htmlData, MIMEType: "text/html", textEncodingName: "UTF-8", baseURL: baseUrl)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
