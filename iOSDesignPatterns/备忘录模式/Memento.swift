//
//  Memento.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/12.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

// 象棋棋子类，原发器
class Chessman {
    public var label: String
    public var x: Int
    public var y: Int
    
    init(label: String, x:Int, y:Int) {
        self.label = label
        self.x = x
        self.y = y
    }
    // 保存状态
    public func save() -> ChessmanMemento{
        return ChessmanMemento(label: label, x: x, y: y)
    }
    
    // 恢复状态
    public func restore(memento: ChessmanMemento) {
        self.label = memento.label
        self.x = memento.x
        self.y = memento.y
    }
}
// 象棋棋子备忘录类
class ChessmanMemento {
    public var label: String
    public var x: Int
    public var y: Int
    
    init(label: String, x:Int, y:Int) {
        self.label = label
        self.x = x
        self.y = y
    }
}
// 备忘录管理类：负责人
class MementoCaretaker {
    public var memento: ChessmanMemento?
    
}

// 使用
class UseXX {
    func use() {
        let mc = MementoCaretaker()
        let chess = Chessman(label: "车", x: 1, y: 1)
        mc.memento = chess.save()  // 保存状态
        chess.y = 4
        mc.memento = chess.save()  // 保存状态
        chess.x = 5
        chess.restore(memento: mc.memento!) // 恢复状态
    }
}
