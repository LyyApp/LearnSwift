//
//  Person.swift
//  swift学习
//
//  Created by YoungEE on 2020/5/18.
//  Copyright © 2020 YoungEE. All rights reserved.
//

import UIKit

/**
 函数的构造 -- 就相当于建立一个”对象“
 1、给属性分配空间
 2、设置初始化的值
 
 Swift 中的构造函数都是init，不像OC 有很多初始化的方法 比如initwithxxx
 
 重载:oc中没有重载的概念
 重载就是函数名相同，参数名，参数类型，参数的个数不同
 oc中使用 initwithxxx的方式替代
 重载并不仅仅局限于构造函数
 
 */

class Person: NSObject {
    //在ios中，所有的属性都是延迟加载的

    var name:String
    var age:Int
    
    /**
        注意：在重写init时 子类定义的字段必须先与super.init初始化
            super.init()可写可不写，如果不写系统会默认生成一个super.init()方法调用，不过建议还是写上，这样会让代码更加清晰
     
     重写：父类提供了这个函数，而子类需要对父类的函数进行扩展，就叫做重写
        重写init（）必须所有的字段都赋值，也么初始化使用optional ？ 要么在super之前赋值
     */
//
//    override init() {
//        print("Person init")
//        super.init()
//    }
    /**
     重载的构造函数，只要是构造函数，就需要给属性设置初始值
     如果重写了系统的构造方法那么就不能在被访问了
     */
    init(name:String , age:Int){
        self.name = name
        self.age = age
    }
    
    
}
