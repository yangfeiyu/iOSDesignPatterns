//
//  Proxy.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/11.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

protocol Subject {
    func request()
}

class RealSubject: Subject {
    func request() {
        
    }
}

// 代理
class Proxy: Subject {
    // 代理类维护一个真实主题对象的引用
    private let realSubject = RealSubject()
    
    func preRequest() {
        
    }
    
    func request() {
        preRequest()
        realSubject.request()
        postRequest()
    }
    
    func postRequest() {
        
    }
}
