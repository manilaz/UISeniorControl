//
//  ViewController.swift
//  UISeniorControl
//
//  Created by 张斌 on 2018/7/12.
//  Copyright © 2018年 张斌. All rights reserved.
//

import UIKit

var count = 1

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = .white
        title = "第\(count)个视图"
        count += 1
        let btn = UIButton(type: .system)
        btn.frame = CGRect(x: 20, y: 100, width: 280, height: 30)
        btn.setTitle("push", for: .normal)
        btn.addTarget(self, action: #selector(push), for: .touchUpInside)
        //navigationController?.navigationBar.setBackgroundImage(UIImage(named: "head"), for: .default)
        navigationController?.navigationBar.barTintColor = .purple
        
        let btnItem1 = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(click))
        btnItem1.setValue( "1", forKey: "title")
        let btnItem2 = UIBarButtonItem(barButtonSystemItem: .reply, target: self, action: #selector(click))
//        btnItem2.setValue( "2", forKey: "title")
//        navigationItem.leftBarButtonItems = [btnItem1,btnItem2]
//        navigationItem.backBarButtonItem = btnItem2
        navigationController?.navigationItem.leftBarButtonItem = btnItem1
//        navigationItem.backBarButtonItem
//        navigationItem.leftBarButtonItem = btnItem2
        navigationController?.navigationItem.hidesBackButton = true
        view.addSubview(btn)
    }
    
    @objc func click(btn:UIBarButtonItem){
        
        print(btn.value(forKey : "title"))
        
    }
    
    @objc func push() {
        
        let con = ViewController()
        con.title = "第\(count)个视图"
        navigationController?.pushViewController(con, animated: true)
        
        print(count)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

