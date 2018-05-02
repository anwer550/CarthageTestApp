//
//  ViewController.swift
//  SampleApp
//
//  Created by primesoft on 01/05/18.
//  Copyright © 2018 primesoft. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let parameters: Parameters = ["q": "test", "format": "json", "pretty": 1, "no_html": 1, "skip_disambig": 1]

        Alamofire.request("https://api.duckduckgo.com", method: .get, parameters: parameters).responseData { response in
            // 3
            if response.result.isFailure {
                print(response.result.isFailure)
                return
            }

            // 4
            guard let jsonData = response.result.value else {
                print(response.result.error as Any)
                return
            }
            print(jsonData)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

