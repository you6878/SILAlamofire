//
//  ViewController.swift
//  HowlPapago
//
//  Created by 유명식 on 2018. 3. 20..
//  Copyright © 2018년 유명식. All rights reserved.
//

import UIKit
import Alamofire
import AlamofireObjectMapper

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var url = "https://openapi.naver.com/v1/papago/n2mt"
        var params = ["source":"ko",
                      "target":"en",
                      "text":"만나서 반갑습니다."]
        var header = ["Content-Type":"application/x-www-form-urlencoded; charset=UTF-8",
                      "X-Naver-Client-Id":"e2q77p_f58GcFUT4mgKu",
                      "X-Naver-Client-Secret":"wf8W67IfYl"]
        
        Alamofire.request(url, method: .post, parameters: params, encoding: URLEncoding.default, headers: header).responseJSON { (response) in
            print(response.result.value)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

