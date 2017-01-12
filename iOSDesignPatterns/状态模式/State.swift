//
//  State.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/12.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

protocol State {
    // 声明抽象业务方法，不同的具体状态可以不同的实现
    func handle()
}

extension State {
    func handle() {
        // 不同状态的相同实现，默认实现
    }
}

class ConcreteStateA: State {
    func handle() {
        // 具体实现代码
    }
}

class ConcreteStateB: State {
    func handle() {
        // 具体实现代码
    }
}

// 环境类，维持一对抽象状态类的引用
class StateContext {
    var state: State?
    var num: Int?
    
    func request() {
        if num == 1 {
            state = ConcreteStateA()
        } else {
            state = ConcreteStateB()
        }
        
        state?.handle()
    }
    
}
