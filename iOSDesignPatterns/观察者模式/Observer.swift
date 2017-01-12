//
//  Observer.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/12.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

// 抽象目标类
protocol AbstractSubject {
    // 定义一个观察者集合用于存储所有的观察者对象
    var observers: [Observer] {get set}
    
    // 注册方法，用于向观察者集合增加一个观察者
    mutating func attach(observer: Observer)
    
    // 注销一个观察者
    mutating func detach(observer: Observer)
    
    // 通知方法
    func notify()
}

extension AbstractSubject {
    mutating func attach(observer: Observer) {
        self.observers.append(observer)
    }
    
    mutating func detach(observer: Observer) {
        self.observers.remove(at: 0)
    }
}

// 具体目标类
class ConcreteSubject: AbstractSubject {
    var observers: [Observer] = []

    func notify() {
        for observer in observers {
            observer.update()
        }
    }
}

protocol Observer {
    func update()
}

class ConcreteObserver: Observer {
    func update() {
        // 具体响应代码
    }
}
