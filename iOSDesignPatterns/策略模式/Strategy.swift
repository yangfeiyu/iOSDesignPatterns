//
//  Strategy.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/12.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

protocol AbstractStrategy {
    func algorithm()
}

class ConcreteStrategyA: AbstractStrategy {
    func algorithm() {
        // 算法A
    }
}

class ConcreteStrategyB: AbstractStrategy {
    func algorithm() {
        // 算法B
    }
}

class StrategyContext {
    var strategy: AbstractStrategy
    
    init(strategy: AbstractStrategy) {
        self.strategy = strategy
    }
    
    public func algorithm() {
        strategy.algorithm()
    }
}

// 使用
class UseX {
    func use() {
        let strategy = ConcreteStrategyA()
        let context = StrategyContext(strategy: strategy)
        context.algorithm()
    }
}
