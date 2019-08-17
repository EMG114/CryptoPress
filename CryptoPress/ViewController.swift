//
//  ViewController.swift
//  CryptoPress
//
//  Created by Erica on 8/17/19.
//  Copyright © 2019 Erica. All rights reserved.
//

import UIKit
import CryptoNewsApi

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        
        let api = CryptoControlApi(apiKey: "")
        
        api.getTopNews { (error, articles) in
            if (error == CCErrors.invalidAPIKey) {
                print("bad api key")
            }
            
            print(articles?.count)
            print(articles)
        }
        
        
        api.getTopNewsByCategory { (error, categories) in
            print(categories?.analysis.count)
        }
    }

}

