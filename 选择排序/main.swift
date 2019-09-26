//
//  main.swift
//  选择排序
//
//  Created by  MarvinChan on 2019/9/26.
//  Copyright © 2019  MarvinChan. All rights reserved.
//

import Foundation


/// 选择排序
///  每轮选出最小的
/// - Parameter list: 需要排序的数组
func selectionSort(arr: inout [Int]) {
    // 总共要经过 N-1 轮比较
    for i in 0..<arr.count - 1 {
        var minIndex = i
        // 每轮需要比较的次数 N-i
        for j in i+1..<arr.count {
            if arr[minIndex] > arr[j] {
                // 记录目前能找到的最小值元素的下标
                minIndex = j
                print(minIndex)
            }
        }
        arr.swapAt(i, minIndex)
        print(arr)
    }
}

// 测试调用
func testSort () {
    // 生成随机数数组进行排序操作
//    var list:[Int] = []
//    for _ in 0...1000 {
//        list.append(Int(arc4random_uniform(100)))
//    }
    var list = [32,31,45,3,28,12,8,6,48]
    print("排序前\(list)")
    print("===============================================================")
    selectionSort(arr:&list)
    print("===============================================================")
    print("排序后\(list)")
}

let startTime = CFAbsoluteTimeGetCurrent()
testSort()
let endTime = CFAbsoluteTimeGetCurrent()
debugPrint("代码执行时长：%f 毫秒", (endTime - startTime)*1000)
