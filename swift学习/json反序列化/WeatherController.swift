//
//  WeatherController.swift
//  swift学习
//
//  Created by YoungEE on 2020/5/20.
//  Copyright © 2020 YoungEE. All rights reserved.
//

import UIKit

class WeatherController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let urlStr: String = "http://www.weather.com.cn/data/sk/101010100.html"
        
        let url = URL(string: urlStr)
//        let url3 = NSURL(string: urlStr)
        //“_”表示忽略 session默认超时时长60s
        URLSession.shared.dataTask(with:url!) { (data, respone, error) in
            if error == nil{
                let json: String = String(data: data!, encoding: .utf8)!
//                JSONDecoder.decode(<#T##self: JSONDecoder##JSONDecoder#>)
                print(json)
            }else{
                print("错误")
            }
        }.resume()
//        let jsonStr = "[\"hello\",\"word\"]"
//        let jsonData = jsonStr.data(using: .utf8)
        //反序列化 捕获异常当jsonStr的格式错误时直接print  error
//        do {
//            let result = try JSONSerialization.jsonObject(with: jsonData!, options: [])
//            print(result)
//        } catch  {
//            print(error)
//        }
        //try！强行try 如果数据格式不对那么会崩溃
//        let result = try! JSONSerialization.jsonObject(with: jsonData!, options: [])
        
//        let result = try? JSONSerialization.jsonObject(with: jsonData!, options: [])

//        guard let result = try? JSONSerialization.jsonObject(with: jsonData!, options: []) else {
//            print("数据格式错误")
//            return
//        }
//        print(result)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
