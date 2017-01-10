//
//  AbstractFactory.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/9.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

// 抽象产品
protocol Button {
    func display()
}

protocol TextField {
    func display()
}

// 具体产品
class SpringButton: Button {
    func display() {
        print("SpringButton")
    }
}

class SummerButton: Button {
    func display() {
        print("SummerButton")
    }
}

class SpringTextField: TextField {
    func display() {
        print("SpringTextField")
    }
}

class SummerTextField: TextField {
    func display() {
        print("SummerTextField")
    }
}

// 抽象工厂
protocol SkinFactory {
    func createButton() -> Button
    func createTextField() -> TextField
}

// 具体工厂

class SpringSkinFactory: SkinFactory {
    func createButton() -> Button {
        return SpringButton()
    }
    
    func createTextField() -> TextField {
        return SpringTextField()
    }
}

class SummerSkinFactory: SkinFactory {
    func createButton() -> Button {
        return SummerButton()
    }
    
    func createTextField() -> TextField {
        return SummerTextField()
    }
}


