import UIKit

/**
 字典的定义
 let是不可变,var是可变
 */
var dic1 = ["name":"张三", "age":"18"]
//修改 如果key存在的则修改对应key的值 如果不存在则是新增
dic1["name"] = "李四"
dic1["sex"] = "男"
print(dic1)

//遍历
for (key,value) in dic1 {
    print("KEY \(key) --- VALUES \(value)")
}

//字典的合并
var dic2 = ["title":"老大","job":"程序员"]
for (k,v) in dic2 {
    dic1[k] = v
}
print(dic1)

