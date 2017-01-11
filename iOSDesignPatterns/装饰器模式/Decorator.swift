//
//  Decorator.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/10.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

// 抽象界面构件类
protocol Component {
    func display()
}

// 具体构件类
class Window: Component {
    func display() {
        print("显示窗体")
    }
}

class TextBox: Component {
    func display() {
        print("显示文本框")
    }
}

class ListBox: Component {
    func display() {
        print("显示列表框")
    }
}
// 抽象装饰类
class ComponentDecorator: Component {
    private let component: Component?    // 维持一个对抽象构件对象的引用
    
    init(component: Component) {
        self.component = component
    }
    
    func display() {
        component?.display()
    }
}
// 滚动条装饰类，具体装饰类
class ScrollBarDecorator: ComponentDecorator {
    override init(component: Component) {
        super.init(component: component)
    }
    
    override func display() {
        self.setScrollBar()
        super.display()
    }
    
    public func setScrollBar() {
        
    }
}
class UseXXXX {
    func useXXXX() {
        let component = Window()
        let componentDecorator = ScrollBarDecorator(component: component)
        componentDecorator.display()
    }
}
