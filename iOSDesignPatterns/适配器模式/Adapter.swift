//
//  Adapter.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/10.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

// 目标接口
protocol ScoreOperation {
    func sort(array: [Int]) -> [Int]
    func search(array: [Int], key: Int) -> Int
}

/// 快排，适配者
class QuickSort {
    public func quickSort(array: [Int]) -> [Int]{
        // ...
        return array
    }
    
}

class BinarySearch {
    public func binarySearch(array: [Int], key: Int) -> Int {
        // ...
        return array.first!
    }
}

// 适配器
class OpeartionAdapter: ScoreOperation {
    private let sortObj: QuickSort
    private let searchObj: BinarySearch
    
    init() {
        sortObj = QuickSort()
        searchObj = BinarySearch()
    }
    
    func sort(array: [Int]) -> [Int] {
        return sortObj.quickSort(array: array)
    }
    
    func search(array: [Int], key: Int) -> Int {
        return searchObj.binarySearch(array: array, key: key)
    }
    
}
