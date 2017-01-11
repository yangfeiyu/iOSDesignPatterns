//
//  Explain.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/11.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

// 抽象表达式
protocol AbstractExpression {
    func interpret(ctx: Context)
}

// 终结符表达式的解释操作
class TerminalExpression: AbstractExpression {
    func interpret(ctx: Context) {
        
    }
}

// 非终结符
class NonterminalExpression: AbstractExpression {
    private var left: AbstractExpression
    private var right: AbstractExpression
    
    init(left: AbstractExpression, right: AbstractExpression ) {
        self.left = left
        self.right = right
    }
    
    func interpret(ctx: Context) {
        // 递归调用每一个组成部分的 interpret() 方法
        // 在递归调用时指定组成部分的连接方式，即非终结符的功能
    }
}


class Context {
    private var map = [String : String]()
    
    func assign(key: String, value: String) {
        
    }
    
    func lookup(key: String) {
        
    }
}
