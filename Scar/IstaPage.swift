//
//  IstaPage.swift
//  Scar
//
//  Created by Antonio Cimino on 29/04/2020.
//  Copyright © 2020 Mattia Cardone. All rights reserved.
//

import UIKit
import WebKit

class InstaPage: UIViewController {

   
    @IBOutlet weak var myWebView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "https://www.instagram.com/giosan1999/?hl=en")
        myWebView.load(URLRequest(url: url!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
