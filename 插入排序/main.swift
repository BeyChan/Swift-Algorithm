//
//  main.swift
//  插入排序
//
//  Created by  MarvinChan on 2019/9/26.
//  Copyright © 2019  MarvinChan. All rights reserved.
//

import Foundation

func insertSort(arr: inout [Int]) {
    // 从下标为1的元素开始选择合适的位置插入，因为下标为0的只有一个元素，默认是有序的
    for i in 1..<arr.count {
        let temp = arr[i]
        var j = i // 与他前一个数比较
        while (j>0 && arr[j-1] > temp ) { // 与左边所有人都比完了或者找到一个比他矮的为止
            arr[j] = arr[j-1]
            j -= 1
        }
        if j != i {
            arr[j] = temp
        }
    }
}

// 测试调用
func testSort () {
    // 生成随机数数组进行排序操作
    var list:[Int] = []
    for _ in 0...1000 {
        list.append(Int(arc4random_uniform(1000)))
    }
    print("\(list)")
    insertSort(arr:&list)
    print("\(list)")
}

let startTime = CFAbsoluteTimeGetCurrent()
testSort()
let endTime = CFAbsoluteTimeGetCurrent()
debugPrint("代码执行时长：%f 毫秒", (endTime - startTime)*1000)
