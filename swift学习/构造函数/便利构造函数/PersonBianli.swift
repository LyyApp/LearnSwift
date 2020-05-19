//
//  PersonBianli.swift
//  swift学习
//
//  Created by YoungEE on 2020/5/19.
//  Copyright © 2020 YoungEE. All rights reserved.
/**
 便利构造函数
 */
 
import UIKit
@objcMembers
class PersonBianli: NSObject {
        var name : String?
        var age : Int = 0
    /**
     便利构造函数使用convenience 修饰
     作用：
     1、能够提供条件检测
     2、能够允许返回nil，默认（指定）的构造函数，必须要创建对象
     3、便利构造函数，必须在条件检测完成之后，以self的方式调用其他的构造函数，创建对象
     4、能够简化对象的创建方法
     */
    convenience init?(name:String , age:Int){
        if age < 0 || age > 100  {
            return nil
        }
        
        self.init(dic: ["name":name , "age":age])
    }
        
    init(dic:[String: Any]){
        //kvc是OV特有的，本质是在运行时动态的给对象发送‘setValur:forkey:’消息
        //设置数值，调用super.init保证对象被创建完成
        //
        super.init()//调用这个函数就说明对象都创建完成了
        
        /**
         kvc的设置数值
         1、当对象发送setvalue：forkey：消息时
         2、判断属性是否已经被实例化
         3、如果没有被实例化
         1>调用属性对象的构造函数实例化属性
         2>设置数值
         4、如果已经分配了空间，直接设置数值
         
         当我们的属性用这样定义是
         var name : String?
         var age : Int?
         运行会报错PersonKVC 0x600003d71fe0> setValue:forUndefinedKey:]: this class is not key value coding-compliant for the key name.'
         对于基本数据类型，KVC不会主动去调用构造函数如：int float bool因此如果要对基本数据类型，使用KVC设置数值，必须制定初始值，控件完成分配
         */
        setValuesForKeys(dic)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}
