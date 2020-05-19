import UIKit


/**
 数组定义可以存放相同的类型也可以存放不同的类型,如果是存放结构体则结构体需要包装成nsvalue
 */
let array1 = [1,2,3,4]
//如果数组中包含不同类型的必须要将数组的类型定义为any
let array2:[Any] = [1,"2",3,NSValue(cgPoint:CGPoint(x: 2, y: 1))]

/**
 数组的可变 OC中 NSMutableArray和不可变NSArray
        swift:可变为var  不可变为let
 */
//对于一个数组如果能存放任何不同的类型 必须要定义为[Any]
var array3: [Any] = ["1","2"]

array3.append(1)

/**
 数组的基本操作
 */
//遍历
var array4 = [1,2,3,4]
//遍历array中的val
for i in array4{
    print(i)
}
//遍历array中的下标和下标对应的值
for (index,val) in array4.enumerated(){
    print("index-->\(index)","val-->\(val)")
}
//增
array4.append(5)
//改通过下标进项修改
array4[3] = 88
//删
array4.remove(at: 2)//删除对应index的值
array4.removeFirst()//删除第一个
array4.removeLast()//删除最后一个
//array4.removeAll()//删除全部
/**
 注意：数组容量
 从例子中可以得到一个知识点：数组插入元素时，如果容量不够会在当前容量基础上*2，方便后续的元素增加
 oc知识点:
 使用可变数组的时候如果知道容量，应该使用capacity实例化数组，一次性分配控件,如果不使用capacity效率不是特别好
 */
//例子
var array5 = [String]()
for i in 0..<16{
    array5.capacity
    array5.append("数组容量 \(i)")
    print(array5[i]+"-容量\(array5.capacity)")
}

/**
 数组初始化的一个小区别
 */
//定义并且实例化一个空的存放字符串的数组
var array6 = [String]()

//定义一个存放字符串的数组，并没有分配空间
var array7:[String]
//给刚刚定义的数组分配空间
array7 = [String]()

//print(array4)

//数组的合并
var array8 = ["张三","李四"]
let array9 = ["王五","笑话"]
let array10:[Any] = ["人",18]
array8 += array9
//swift中提供的计算必须要是同类型的如果不是同类型的会报错 arrar8是[String] array10是[Any]
//array8 += array10
print(array8)

