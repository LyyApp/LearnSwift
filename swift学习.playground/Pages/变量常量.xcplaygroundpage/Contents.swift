import UIKit


var welcomeMsg:String
welcomeMsg = "hello"

/**
 常量 变量
 常量用 let 一旦设置数值不可更改
 变量用var 可以修改
 */
let x = 10
var y = 5
//Cannot assign to value: 'x' is a 'let' constant 会报错
//x=11
y=6
print(x+y)


/**
 tips:1、自动推导:会根据设置数值的右侧代码，推断常量/变量的类型
      2、在swift中，任何时候都不会做隐式转换
      3、任何两个不同类型的变量或者常量不允许直接计算
 */

//a为整数类型 Int-> 64位整数 long
let a = 10
//b位小数 默认是 Double->双精度小数 ， OC中使用cgfloat
let b = 1.5
//Binary operator '+' cannot be applied to operands of type 'Int' and 'Double'
//print(a+b)
//以上两个是只能通过类型转换成一样后才能计算 如：
print(a+Int(b))
print(Double(a)+b)

/**
 可选项：一个变量，可以为本身类型，也可以为nil
 */

//定义变量/常量如果需要制定类型 可以使用:类型 的方式指定准确的类型
let a1:Double = 20
print(a1)

/**
 可选项可以使用 ？定义 可以是一个指定的类型也可以是nil 如果是变量默认nil
 常量必须初始化值，变量不需要如果没有初始化值为nil
 注意可选项在直接打印输出时候会提示'Optional'
 可选项不能直接计算，必须要加上!
 ！叫做强行解包，就是可选项承诺是有值的，如果没有崩溃
 每次写！的时候，都需要思考，是不是可能为nil
 */
//let a2:Int?
//print(a2)  //Constant 'a2' used before being initialized
let a3:Int? = 10
print(a3) //Optional(10)
var a4:Int?
print(a4) //nil
//print(a4!)//Fatal error: Unexpectedly found nil while unwrapping an Optional
var a5:Int? = 10
print(a5) //Optional(10)
print(a5!) //10

//例子：构造函数带？
//let urlString = "http://www.baidu.com/时间"//urlstring为nil，requestUrl崩溃
let urlString = "http://www.baidu.com"
//url返回的就是一个？函数，如果构造函数有?表示不一定能够创建出来对象
let url = NSURL(string: urlString)
print(url)
//这个构造函数不是带？的。如果参数中没有？表示必须要有值，如果为nil，崩溃
let requestUrl = NSURLRequest(url: url! as URL)
print(requestUrl)

/**
 注意在使用可选项的时候：
 1、明确可选项的概念
 2、实际开发中，可以借助Xcode的智能提示帮助修改
 3、每次修改，都需要为什么会出现 ？ ！
 */

/**
 需要注意的
 var 的可选项是nil
 let 的可选项没有默认值，必须要设置初始值
 */
let name : String? //="张三"
//定义常量的时候，如果指定了类型没有设置初始值，可以有一次设置初始值的机会
name = "李四"
//在次设置会报错
//name = "王五"//Immutable value 'name' may only be initialized once
//?? 操作符号，可以判断之间的变量是否维为nil ，如果为nil，使用后面的替换
var name1 : String?

print((name1 ?? "11")+"好!")






