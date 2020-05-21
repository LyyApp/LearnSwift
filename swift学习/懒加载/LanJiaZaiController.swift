//
//  LanJiaZaiController.swift
//  swift学习
//
//  Created by YoungEE on 2020/5/19.
//  Copyright © 2020 YoungEE. All rights reserved.
//

import UIKit

class LanJiaZaiController: UIViewController {
    //懒加载-本质上是一个闭包
    /**
     第一次访问属性时，会执行后面的闭包代码，将闭包的结构保存在person 属性中下次在访问不会执行闭包
     如果没有lazy，会在initWithCoder方法中调用，当二进制的storybord 被还原成视图控制器之后会被调用
     
     懒加载的概念：懒加载是一种在创建对象，或者计算某个值，或者其他某些开销昂贵的处理过程中延迟执行的策略。这些过程只在第一次被需要的时候才会真正执
     */
    lazy var person:PersonLanJiaZai = {
        print("懒加载")
        return PersonLanJiaZai()
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        print(person)
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        print(person)
    }

}
