import UIKit
import Foundation
/**
 字符串的拼接，截取
 
 Swift中是String 为一个结构体，量级更轻，苹果推荐使用支持遍历
 OC 中是NSString 继承至NSObject  不支持遍历
 */

//字符串的拼接
let name = "张三"
let age = 18
let sex = "男"
print("\(name) \(age) \(sex)")

//字符串追加
var fName = "张三"
fName.append("18岁")
print(fName)


//字符串的遍历
let strNum = "字符串的遍历"
for char in strNum {
    print(char)
}

//字符串的长度
let stringCount1 = "hello word"
//一个英文字母 UTF对应1个字节
print(stringCount1.lengthOfBytes(using: .utf8))
let stringCount2 = "你好世界 swift"
//一个中文对应3个字节
print(stringCount2.lengthOfBytes(using: .utf8))
//上面两种方法不能作为字符串长度的判定方法,这种判定方法才适用
print(stringCount2.count)


//字符串的格式化
let h = 18
let m = 2
let s = 4
print("\(h):\(m):\(s)")
let dataStr = String(format: "%02d:%02d:%02d", h,m,s)
print(dataStr)
let dataStr1 = String(format: "%02d:%02d:%02d", arguments: [h,m,s])
print(dataStr1)

//判断字符串为空
let emptyStr = "3r"
if emptyStr.isEmpty {
    print("为空")
}else{
    print("不为空")
}

/**
 判断字符串是否为空字符串即只有空格
 使用方法trimmingCharacters() 意思为截取字符串并丢弃，截取的规则为（）里面的
 截取规则为CharacterSet类型 whitespacesAndNewlines：为空格和换行符
 */
let emptyStr1 = " "
let emptyStr2 = emptyStr1.trimmingCharacters(in: .whitespacesAndNewlines)
if emptyStr2.isEmpty{
    print("str2为空")
}else{
    print("str2不为空")
}


/**
 字符串 子串即字符串的截取
 */
let jiequStr = "字符串的子串"
/**
 使用nsstring的substring方法 NSMakeRange()第一个参数为开始截取的下标 第二个参数为截取后的长度
 */
let jiequ1 = (jiequStr as NSString).substring(with: NSMakeRange(2, 2))
print(jiequ1)
/**
 */
let jiequ2 = jiequStr.index(jiequStr.startIndex, offsetBy: 2)
//let ss = String(jiequStr.prefix(upTo: jiequ2))
let ss = String(jiequStr.prefix(3))
print(ss)


let startIndex = jiequStr.index(jiequStr.startIndex, offsetBy: 0)
print(String(jiequStr.prefix(upTo: startIndex)))
let endIndex = jiequStr.index(jiequStr.startIndex, offsetBy: 6)
print(String(jiequStr.prefix(upTo: endIndex)))
let subStr = jiequStr[startIndex..<endIndex]
String(subStr)




