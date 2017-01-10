//
//  Logger.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/9.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

protocol Logger {
    func writeLog()
}

class DatabaseLogger: Logger {
    func writeLog() {
        print("DatabaseLogger--writeLog")
    }
}

class FileLogger: Logger {
    func writeLog() {
        print("FileLogger--writeLog")
    }
}

protocol LoggerFactory {
    func createLogger() -> Logger
}

class DatabaseLoggerFactory: LoggerFactory {
    func createLogger() -> Logger {
        let logger = DatabaseLogger()
        return logger
    }
}

class FileLoggerFactory: LoggerFactory {
    func createLogger() -> Logger {
        let logger = FileLogger()
        return logger
    }
}

// 使用工厂方法模式
class UseFactoryMethod {
    
    public func main() {
        // 此处可通过配置文件加载
        let factory = FileLoggerFactory();
        let logger = factory.createLogger()
        logger.writeLog()
        
    }
}
