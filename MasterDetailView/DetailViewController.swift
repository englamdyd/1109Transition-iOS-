//
//  DetailViewController.swift
//  MasterDetailView
//
//  Created by 503-16 on 2018. 11. 9..
//  Copyright © 2018년 the. All rights reserved.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    
    
    @IBOutlet var webView: WKWebView!
    @IBOutlet weak var detailDescriptionLabel: UILabel!
    
    //MasterViewController로부터 웹주소를 넘겨 받을 변수 선언
    var addr : String?
    
    //MasterViewController 에서 테이블의 항목을 선택하면 호출되는 메소드
    func configureView() {
        //addr 이 없을 때는 더조은 홈페이지 출력
        if addr == nil{
            addr = "https://bing.com"
        }
        //문자열로 된 주소를 URL로 변환해서 웹 뷰에 출력
        let url = URL(string:addr!)
        let request = URLRequest(url:url!)
        print(request)
        webView.load(request)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }


}

