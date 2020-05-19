//
//  ViewController.swift
//  swift学习
//
//  Created by YoungEE on 2020/5/11.
//  Copyright © 2020 YoungEE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let per = Student()
//        per.name = "张三"
//        per.age = 18
        
        
//        let per = Person(name: "李四", age: 15)
//        let stu = Student(name: "李四", age: 18, number: "001")
        
//        let per = StudentKVC(dic: ["name":"李四","age":18,"number":"001"])
//        print("\(per.name) -- \( per.age) --\(per.number)")
        
        
        
        //便利构造函数的调用
//        let p = StudentBianli(name: "李四", age: 90)
//
//        /**
//         解包如果用！如果P为nil 那么程序将会崩溃  Unexpectedly found nil while unwrapping an Optional value
//         解包如果用？表示如果P为nil，不继续调用后续的属性或者方法
//         */
//        print("\(p?.name) -- \( p?.age) -- \(p?.number)")
        
        //析构函数
//        let p = PersonXigou()
//        let s = StudentXigou()
        
        
        self.navigationController?.pushViewController(LanJiaZaiController(), animated: true)

    }
    

}

