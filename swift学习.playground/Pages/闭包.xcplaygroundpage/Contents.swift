import UIKit
import Foundation

/**
 swift中的闭包 类似  OC中的block
 block：是C语言的，是一组预先准备好的代码，在需要的时候执行；可以当做参数传递；如果出现self需要注意循环引用
 在swift中函数本来就是可以当做参数传递的
 */

/**
 定义闭包
 1、闭包所有的代码[参数 返回值 执行代码]都放在{}中
 2、in 是用来区分函数定义和执行代码的
 */
let sumFunc = {
    (x:Int, y:Int) ->Int
    in
    return x+y
}
sumFunc(10,20)

//最简单的闭包
let demo = {
    print("hello")
}
demo()

/**
 无参数的回调
 */
let noParam = {
    () -> Void
    in
    print("无参数回调")
}
noParam()

//在闭包中接受参数
let demo1 = {(name:String) in
    print("我是\(name)")
}
demo1("张三")
//给闭包传值然后返回值
let demo2 = {(name:String) -> String in
    return("我是\(name)")
}
demo2("张三")
//闭包作为参数
let hiString = {
    print("你好呀!")
}
func hello(hi:()->Void){
    print("你好!")
    hi()
    print("你叫什么名字")
}
hello(hi: hiString)
hello(hi: {print("你也好!")})

/**
 拖尾闭包
 如果一个函数的最后一个参数是闭包，Swift允许你采用一种被称为 “拖尾闭包语法” 的方式来调用这个闭包。你可以把闭包传入函数之后的花括号里，而不必像传入参数那样。
 */
//由于函数的最后一个参数是闭包，我们可以用拖尾闭包语法来调用
hello(){
    print("你好")
}
//实际上，由于函数没有别的参数了，我们还可以将圆括号完全移除
hello{
    print("你好好")
}

print("使用接收参数的闭包作为函数的参数")
/**
 使用接收参数的闭包作为函数的参数
 */
func hello2(hi:(String)->Void){
    print("你好!")
    hi("你好呀")
    print("你叫什么名字")
}
hello2 { (str:String) in
    print("你也\(str)")
}

/**
 使用有返回值的闭包作为函数的参数
 */
func hello3(hi:(String) -> String){
    print("你好!")
    let desc = hi("你好呀")
    print(desc)
    print("你叫什么名字")
}
hello3 { (str: String) -> String in
    return "返回值\(str)"
}
//Swift知道提供给闭包的参数必须是一个字符串，所以调用的代码可以简写成这样
hello3 { str -> String in
    return "返回值\(str)"
}
//Swfit也知道闭包必须返回一个字符串，于是进一步简写
hello3 { str in
    return "返回值\(str)"
}
//由于这里的闭包只有一行代码，这行代码肯定是返回值的那行代码，因此Swift允许我们把 return 关键字也移除
hello3 { str in "返回值\(str)"
}
//Swift还提供一种速记语法，让你可以把代码变得更短。我们可以让Swift为闭包的参数自动提供一个名字，而不必自行写下 place in。这些自动生成的名字以$开头，然后跟着一个从0开始的整数
hello3{
    "返回值\($0)"
}

//多个参数
func hello4(hi:(String,String) -> String){
    print("同学们好你好!")
    let desc = hi("小明：老师好","小红：老师好")
    print(desc)
    print("开始上课")
}

hello4{
    "第一位同学\($0),弟二位同学\($1)"
}

func hello5(hi:(String,String,String,String) -> String){
    print("同学们好你好!")
    let desc = hi("小明：老师好","小红：老师好","张三:老师好","李四：老师好")
    print(desc)
    print("开始上课")
}

hello5{
   "第一位同学\($0),第二位同学\($1),第三位同学\($2),第四位同学\($3)"
}

//从函数中返回闭包
func hello6() -> (String) -> Void{
    return {
        print("我是\($0)")
    }
}
hello6()("张三")

//捕获变量
func hello7() -> (String) ->Void{
    var count = 1
    return{
        print("调用第\(count)次，我叫\($0)")
        count += 1
    }
}
//这种方法不会是内部的变量计数增加，因为每次都会初始化函数
hello7()("张三")
hello7()("张三")
hello7()("张三")
//这种方法 内部变量的技术会增加，因为先已经初始化函数了
let hi = hello7()
hi("张三")
hi("张三")
hi("张三")


/**
 总结：
 你可以把闭包赋值给变量，之后再用变量名来调用闭包。
 闭包和常规函数一样可以接收参数和返回值。
 你可以将闭包作为参数传入函数，并且这些闭包也可以有自己的参数和返回值。
 如果函数的最后一个参数是闭包，你可以使用拖尾闭包语法。
 Swift为拖尾闭包语法自动生成了 $0 和 $1 这样的速记闭包参数名，但不是所有人都习惯这种速记法。
 如果你在闭包中使用了外部变量，这些变量将被闭包“捕捉”以便后续引用。
 */
