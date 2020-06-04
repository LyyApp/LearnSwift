//
//  PersonLanJiaZai.swift
//  swift学习
//
//  Created by YoungEE on 2020/5/19.
//  Copyright © 2020 YoungEE. All rights reserved.
/**
 getter setter方法，私有变量，可读 readonly
 
 */

import UIKit

class PersonLanJiaZai: NSObject {
    //如果不希望暴露方法或者属性，都需要用peivate保护起来，在OC中暴露的方法或者属性放在.h，不暴露的放在.m
    private var _name:String?
    
    /**
     getter和setter方法在swift中极少用到，仅供参考
     当我们在调用某个属性的时候如果他是可先型的即带有？的 一般使用？？坐下保护防止出现nil 的情况导致奔溃
     */
    var name:String?{
        get{
            return (_name ?? "")
        }
        set{
            _name = (newValue ?? "")
        }
    }
    
    /**只读属性  read only 只写getter方法 ，只读属性另外一种叫法叫做计算型属性：每次调用的时候都会执行{}中代码，结果取决于其他属性或者原因
     */
    var title:String?{
        get{
            return "只读属性"+(name ?? "")
        }
    }
    //简写只读属性，如果是只读属性那么get{}可以省略不写
    var title2:String?{
        return "只读属性2"+(name ?? "")
    }
    
    //懒加载
    lazy var title3:String? = {
        /**闭包：是一个提前准备好的代码，在需要的时候执行。
            使用self.用于闭包的执行时，准确的绑定对象。
            闭包中的self.是不能省略的
        */
        return "只读属性3"+(self.name ?? "")
    }()
    
    /**
     综上所述：计算型属性和懒加载的区别：
     计算型属性：每次都要计算，浪费性能，不需要开辟额外的空间，即name的值变化了在调用title2的值也会发生改变
     懒加载：只需要计算一次，需要开辟单独的空间保存计算结果，闭包的代码再也不会被调用。即name的值发生变化 调用title3的值还是上个name的值
     */
}
