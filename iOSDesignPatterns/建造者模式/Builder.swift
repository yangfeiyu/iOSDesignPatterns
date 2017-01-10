//
//  Builder.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/10.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

// 复杂产品
class Actor {
    public var type: String?
    public var sex: String?
    public var face: String?
}

// 抽象建造者
protocol ActorBuilder {
    var actor: Actor {get set}
    
    func buildType()
    func buildSex()
    func buildFace()
    
    func createActor() -> Actor
}

extension ActorBuilder {
    public func createActor() -> Actor {
        print("创建成功")
        return actor
    }
}

// 具体建造者
class HeroBuilder: ActorBuilder {
    var actor: Actor
    
    init() {
        actor = Actor()
    }
    
    public func buildType() {
        actor.type = "英雄"
    }
    
    func buildSex() {
        actor.type = "男"
    }
    
    func buildFace() {
        actor.face = "英俊"
    }
}

// 导演类，组合构建产品
class ActorDirector {
    init(builder: ActorBuilder) {
        builder.buildType()
        builder.buildSex()
        builder.buildFace()
        builder.createActor()
    }
}
