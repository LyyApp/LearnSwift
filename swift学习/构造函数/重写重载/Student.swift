//
//  Student.swift
//  swift学习
//
//  Created by YoungEE on 2020/5/18.
//  Copyright © 2020 YoungEE. All rights reserved.
//

import UIKit

class Student: Person {
    var number:String

    init(name: String, age: Int , number:String) {
        self.number = number
        super.init(name: name, age: age)
    }
}
