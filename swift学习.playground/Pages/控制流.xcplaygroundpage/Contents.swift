/**
 控制流：
    if
    三目
    if let
    guard
    switch
 */

/**
 if写法：
    1、条件部分没有()
    2、判断执行语句必须要在{}内
    3、条件判断，C语言中有一个非零即真,Swift中只有true/false
 */
let a1 = 10
//正确写法1
if a1 > 10 {
    print("值小于10")
}else{
    print("在这个区间")
}

//正确写法2 不过最好还是按照规范来
if (a1 <= 10) {
    print("ssss")
}


/**
 三目，在swift用到的很多
 写法: 判断条件 ? 执行语句1 ： 执行语句2
 */

let a2 = 2
a2 > 5 ? print("大于5") : print("小于5")


/**
 if let
 */
let oName : String? = "张三"
let oAge : Int? = 20

//正常写法
if oName != nil && oAge != nil {
    print(oName!+"--"+String(oAge!))
}

/**
 使用 if let
 多值的判断使用 , 分隔
 注意：if let 语句中不能使用 && || 条件
*/
if let name = oName, let age = oAge{
    print(name+"--"+String(age))
}

/**
 guard   是和 if let 刚好相反的指令
 */
func checNum(){
//    guard let name = oName else {
//        print("name 为nil")
//        return
//    }
    guard oName != nil else {
        print("name 为nil")
        return
    }
    
//    guard let age = oAge else {
//        print("age 为 nil")
//        return
//    }
    guard oAge != nil else {
        print("age 为 nil")
        return
    }
    /**
     代码执行到此，name和age一定有值
     在实际的开发中。复杂的代码在条件判断之后
     使用guard可以使代码嵌套少一层
     */
//    print(name+"---"+String(age))
//    print("\(name) ---- \(age)")
    print("\(oName!) --- \(oAge!)")
}
checNum()


/**
 switch
 1、不需要在每个条件后面加上break
 2、不在局限对int的分支，可以对任意的数据类型进行检测
 3、各个case之间不会穿透，如果有多个值可以使用 ， 分隔
 4、定义变量，不需要使用{} 分隔
 5、在swift中。必须涵盖多有条件，每个case至少包含一天语句
 */
let number = "11"
switch number {
case "11","10":
    let name = "哈哈"
    print("\(name)+ 好")
case "9":
    print("9 ok")
default:
    break
}


