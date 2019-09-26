//
//  main.swift
//  希尔排序
//
//  Created by  MarvinChan on 2019/9/26.
//  Copyright © 2019  MarvinChan. All rights reserved.
//

import Foundation

func shellSort(arr: inout [Int]) {
    let len = arr.count
    var gap = 1
    while gap < len/3 {
        gap = gap * 3 + 1
    }
    while gap > 0 {
        for i in gap..<len {
            let temp = arr[i]
            var j = i - gap
            while (j >= 0 && arr[j]>temp) {
                arr[j+gap] = arr[j]
                j -= gap
            }
            arr[j+gap] = temp
        }
        gap = gap/3
    }
}

    
func shellSort2(arr: inout [Int]) {
    let N = arr.count
    var gap = N/2
    while gap > 0 {
        for i in gap..<N {
              var j = i-gap
              let temp = arr[i]
              while (j >= 0 && arr[j] > temp){
                  arr[j+gap] = arr[j]
                  j -= gap
              }
              arr[j+gap] = temp
        }
        gap = gap/2
    }
}


// 测试调用
func testSort () {
    // 生成随机数数组进行排序操作
    var list:[Int] = []
    for _ in 0...10000 {
        list.append(Int(arc4random_uniform(10000)))
    }
    print("\(list)")
    shellSort(arr:&list)
    print("\(list)")
}

let startTime = CFAbsoluteTimeGetCurrent()
testSort()
let endTime = CFAbsoluteTimeGetCurrent()
debugPrint("代码执行时长：%f 毫秒", (endTime - startTime)*1000)

