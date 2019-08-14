//
//  ViewController.swift
//  CustomCellTest
//
//  Created by YAMAMOTORYO on 2019/08/13.
//  Copyright © 2019年 YAMAMOTORYO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView : UITableView!
    
    
    var contentArray = ["お野菜食べる", "お魚食べる","歩く","運転する"]
    var checkArray : [Bool] = Array(repeating: false, count: 4)
    
    //まだ使わない
    let saveData : UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
        
        
        for i in 0...3 {
            checkArray[i] = false
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // セルを取得する
        let cell: CustomTableViewCell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomTableViewCell
        // セルに表示する値を設定する
        //この方法だとだめ。カスタムセルを利用する場合は、メソッドを使う
//        cell.label?.text = contentArray[indexPath.row]
        //ファイル名の作成
        let imageNameString = "koupen_0" + String(indexPath.row+1)
        //
        cell.setCellData(contentArray[indexPath.row], imageName: imageNameString, check: checkArray[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("押されたのは" + contentArray[indexPath.row])
        checkArray[indexPath.row] = !checkArray[indexPath.row]
        print(checkArray[indexPath.row])
        tableView.reloadData()
    }
    
    



}

