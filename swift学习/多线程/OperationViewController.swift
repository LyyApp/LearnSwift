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
        /**
         同步 死锁
         
         死锁的原因
         viewdidload是一个任务  这个任务 先被添加到主线程执行 但是在执行过程中又添加了个同步的任务，即viewdidload的作用域是包含同步任务的，就造成了 viewdidload执行需要等待同步任务执行完，但是同步任务的执行又必须等待viewdidload执行完，这样就造成了相互等待，从而造成了死锁
         */
//        que.sync {
//            print("1")
//        }
        //异步
        que.async {
            print("1",Thread.current)
        }
        
        let seriaQue = DispatchQueue.init(label: "", qos: .default, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
        seriaQue.async {
            print("2",Thread.current)
        }
    }

}
