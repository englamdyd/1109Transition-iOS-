//
//  ViewController.swift
//  TableView
//
//  Created by 503-16 on 2018. 11. 9..
//  Copyright © 2018년 the. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    //테이블 뷰에 출력할 데이터 배열 선언
    var names : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        names.append("프로그래밍 언어")
        names.append("자료 구조")
        names.append("알고리즘")
        names.append("자료기기초")
        names.append("소프트웨어 공학")
        names.append("컴퓨터 구조")
        names.append("오퍼레이팅 시스템")
        
        //테이블 뷰의 delegate 와 datasource 지정
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//테이블 뷰 관련 메소드
extension ViewController : UITableViewDelegate, UITableViewDataSource{
    //섹션 별 행의 개수를 리턴하는 메소드
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return names.count
    }
    //셀을 생성해주는 메소드
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        //재사용 가능한 셀을 가져오기
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        //재사용 가능한 셀이 없으면 셀을 새로 생성
        if cell == nil{
            cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
        }
        //셀의 레이블에 names 배열의 데이터를 출력
        cell?.textLabel!.text = names[indexPath.row]
        return cell!
    }


}
