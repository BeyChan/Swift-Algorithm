//
//  main.swift
//  归并排序
//
//  Created by  MarvinChan on 2019/9/26.
//  Copyright © 2019  MarvinChan. All rights reserved.
//

import Foundation

// 归并
func mergeSort(unsortedArray: [Int]) -> [Int]{
    let len = unsortedArray.count
    if len <= 1 {
        return unsortedArray
    }
    let mid = len / 2
    let leftArray = mergeSort(unsortedArray: Array(unsortedArray[0..<mid]))
    let rightArray = mergeSort(unsortedArray: Array(unsortedArray[mid..<len]))
    
    var result = [Int]()
    var leftIndex = 0
    var rightIndex = 0
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        if leftArray[leftIndex] < rightArray[rightIndex] {
            result.append(leftArray[leftIndex])
            leftIndex += 1
        } else {
            result.append(rightArray[rightIndex])
            rightIndex += 1
        }
    }
    
    while leftIndex < leftArray.count {
        result.append(leftArray[leftIndex])
        leftIndex += 1
    }
    while rightIndex < rightArray.count {
        result.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    return result
}

// 测试调用
func testSort () {
    // 生成随机数数组进行排序操作
    var list:[Int] = []
    for _ in 0...10000 {
        list.append(Int(arc4random_uniform(10000)))
    }
    print("\(list)")
    let newArr = mergeSort(unsortedArray:list)
    print("\(newArr)")
}

let startTime = CFAbsoluteTimeGetCurrent()
testSort()
let endTime = CFAbsoluteTimeGetCurrent()
debugPrint("代码执行时长：%f 毫秒", (endTime - startTime)*1000)


