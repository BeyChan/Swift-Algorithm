//
//  main.swift
//  冒泡排序
//
//  Created by  MarvinChan on 2019/9/26.
//  Copyright © 2019  MarvinChan. All rights reserved.
//

import Foundation

/// 冒泡排序
/// 每轮选出最大的
/// - Parameter arr: 数组
func bubbleSort (arr: inout [Int]) {
    for i in 0..<arr.count - 1 {
        for j in 0..<arr.count - 1 - i {
            if arr[j] > arr[j+1] {
                // 此处用swapAt效率不高
//                arr.swapAt(j, j+1)
                let temp = arr[j+1]        // 元素交换
                arr[j+1] = arr[j]
                arr[j] = temp
            }
        }
    }
}

// 测试调用
func testSort () {
    // 生成随机数数组进行排序操作
    var list:[Int] = []
    for _ in 0...1000 {
        list.append(Int(arc4random_uniform(100)))
    }
    print("\(list)")
    bubbleSort(arr:&list)
    print("\(list)")
}

let startTime = CFAbsoluteTimeGetCurrent()
testSort()
let endTime = CFAbsoluteTimeGetCurrent()
debugPrint("代码执行时长：%f 毫秒", (endTime - startTime)*1000)
