//
//  OperationViewController.swift
//  swift学习
//
//  Created by YoungEE on 2020/5/21.
//  Copyright © 2020 YoungEE. All rights reserved.
//

import UIKit

class OperationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let que = DispatchQueue.main
        //同步 死锁
//        que.sync {
//            print("1")
//        }
        //异步
        que.async {
            print("1")
        }
    }

}
