//
//  PersonXigou.swift
//  swift学习
//
//  Created by YoungEE on 2020/5/19.
//  Copyright © 2020 YoungEE. All rights reserved.
//

import UIKit

/**
 构造过程
 从子类开始，分配空间初始化属性，向父类依次调用，一直到所有的属性全部就绪
 
 析构过程(在OC中就是dealloc)
 从子类开始释放，自动调用父类的析构函数，释放父类的属性
 
 释放过程和构造过程完全一样
 */

class PersonXigou: NSObject {
    /**
        dealloc 对象释放的方法
     与dealloc类似，主要是负责对象被销毁之前的内存释放工作
     1、没有func
     2、没有()-> 不允许重载，不允许带参数，不允许直接调用，在系统内部自动调用
     
     在实际开发中，哪些内容需要主动释放
     1、通知，如果不释放，程序不会崩溃
     2、KVO，如果不释放，程序会崩溃
     3、NSTimer 如果不释放，会造成循环引用
    */
    
    deinit {
        print("父类 88")
    }
}
