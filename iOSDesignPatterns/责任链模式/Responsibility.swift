//
//  Responsibility.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/11.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

protocol Handler {
    var successor: Handler? {get set}
    
    func handleRequest(request: String)
}

class ConreteHandler: Handler {
    var successor: Handler?

    func handleRequest(request: String) {
        // 能否处理
        let canHandler = false
        
        if canHandler {
            // 处理请求
        } else {
            // 转发请求
            successor?.handleRequest(request: request)
        }
    }
}
