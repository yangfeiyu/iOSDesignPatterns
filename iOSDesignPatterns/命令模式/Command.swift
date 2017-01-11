//
//  Command.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/11.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

protocol Command {
    func execute()
}

class ConcreteCommand: Command {
    // 维持一个接受请求对象的引用
    private let receiver: Receiver?
    
    init() {
        receiver = Receiver()
    }
    
    func execute() {
        receiver?.action()
    }
}

class Receiver {
    public func action() {
        // 具体操作
    }
}

class Invoker {
    private var command: Command?
    
    // 构造注入
    init(command: Command?) {
        self.command = command
    }
    
    // 设值注入
    public func setCommand(command: Command?) {
        self.command = command
    }
    
    // 业务方法，用于调用命令类的 execute() 方法
    public func call() {
        self.command?.execute()
    }
}

class CommandQueue {
    private var commands = [Command]()
    
    public func addCommand(command: Command) {
        commands.append(command)
    }
    
    public func removeCommandAtIndex(index: Int) {
        commands.remove(at: index)
    }
    
    public func execute() {
        for command in commands {
            command.execute()
        }
    }
}

class InvokerCommandQueue {
    private var commandQueue: CommandQueue?
    
    // 构造注入
    init(commandQueue: CommandQueue?) {
        self.commandQueue = commandQueue
    }
    
    // 设值注入
    public func setCommandQueue(commandQueue: CommandQueue?) {
        self.commandQueue = commandQueue
    }
    
    // 业务方法，用于调用命令类的 execute() 方法
    public func call() {
        self.commandQueue?.execute()
    }
}

class Use {
    func use() {
        let command = ConcreteCommand()
        let invoker = Invoker(command: command)
        invoker.call()
        
    }
}
