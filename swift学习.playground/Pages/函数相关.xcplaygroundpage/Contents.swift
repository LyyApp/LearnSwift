import UIKit

//函数的定义 有返回值
func sum(x:Int , y:Int) ->Int{
    return x+y
}
sum(x:5,y:20)

/**
 外部参数
 外部参数不影响函数内部代码的执行
 作用是方便调用函数的程序员，更加明确各个参数的含义
 外部参数在闭包中很重要
 */
func sum2(num1 x:Int , num2 y:Int) -> Int{
    return x+y
}
sum2(num1:20,num2:20)

/**
 没有返回值
 1、什么都不写
 2、void
 3、（）
 这三种方式都会在闭包中使用
 */
func sum3(){
    print("第一种方式什么都不写")
}
func sum4() ->Void{
    print("第二种方式返回Void")
}
func sum5() ->(){
    print("第三种方式返回()")
}
sum3()
sum4()
sum5()
