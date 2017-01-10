//
//  Bridge.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/10.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

protocol Color {
    
}
// 抽象类
protocol Pen {
    var color: Color? {get set}
    
    mutating func setColor(color: Color)
    
    func write()
}

extension Pen {
    mutating func setColor(color: Color) {
        self.color = color
    }
}

class RedColor: Color {
    
}

class GreenColor: Color {
    
}

class Pencil: Pen {
    var color: Color?

    func write() {
        print("铅笔")
    }
}

class ChinesePen: Pen {
    var color: Color?
    
    func write() {
        print("毛笔")
    }
}

// 使用
class UseXXX {
    func UseXXX() {
        var pen = Pencil()
        let color = RedColor()
        pen.setColor(color: color)
        pen.write()
    }
}



