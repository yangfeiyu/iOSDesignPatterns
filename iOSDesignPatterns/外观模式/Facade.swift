//
//  Facade.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/11.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

class SubSystemA {
    public func methodA() {
    
    }
}

class SubSystemB {
    public func methodB() {
        
    }
}

class SubSystemC {
    public func methodC() {
        
    }
}

// 外观类
class Facade {
    private let obj1 = SubSystemA()
    private let obj2 = SubSystemB()
    private let obj3 = SubSystemC()
    
    public func method() {
        obj1.methodA()
        obj2.methodB()
        obj3.methodC()
    }
}

// 使用
class Usex {
    func usex() {
        let facade = Facade()
        facade.method()
    }
}
