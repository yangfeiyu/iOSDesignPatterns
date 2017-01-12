//
//  Middle.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/11.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

// 抽象中介者
protocol Mediator {
    func componentChanged(component: ColleagueComponent)
}
// 具体中介者
class ConcreteMediator: Mediator {
    // 维持各个同事的对象引用
    var button: FYButton?
    var list: FYList?
    
    // 封装同事对象之间的交互
    func componentChanged(component: ColleagueComponent) {
        
    }
}
// 抽象组件类，抽象同事类
protocol ColleagueComponent {
    var mediator: Mediator? {set get}
    mutating func setMediator(mediator: Mediator)
    // 转发调用
    mutating func changed()
}

extension ColleagueComponent {
    mutating func setMediator(mediator: Mediator) {
        self.mediator = mediator
    }
    
    mutating func changed() {
        mediator?.componentChanged(component: self)
    }
}
class FYButton: ColleagueComponent {
    var mediator: Mediator?
}
class FYList: ColleagueComponent {
    var mediator: Mediator?
}
// 使用
class UseXXXXX{
    func Use() {
        let mediator = ConcreteMediator()
        var button = FYButton()
        var list = FYList()
        
        button.setMediator(mediator: mediator)
        list.setMediator(mediator: mediator)
        
        mediator.button = button
        mediator.list = list
        
        button.changed()
        list.changed() 
    }
}

