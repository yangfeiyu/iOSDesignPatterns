//
//  Iterator.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/11.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

protocol Iterator {
    
    func first()  // 将游标指向第一个元素
    func next()   // 将游标指向下一个元素
    func hasNext() -> Bool
    func currentItem() -> NSObject
}

class ConcreteIterator: Iterator {

    // 维持一个对具体聚合对象的引用，以便访问存储在聚合对象中的数据
    internal var objects: Aggregate
    
    init(objects: Aggregate) {
        self.objects = objects
    }
    
    func first() {
        
    }
    
    func next() {
        
    }
    
    func hasNext() -> Bool {
        // ...
        return false
    }
    
    func currentItem() -> NSObject {
        // ...
        return NSObject()
    }
}

// 抽象聚合对象
protocol Aggregate {
    func createIterator() -> Iterator
}

// 具体聚合对象
class ConcreteAggregate: Aggregate {
    func createIterator() -> Iterator {
        return ConcreteIterator(objects: self)
    }
}
