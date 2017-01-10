//
//  Factory.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/9.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

class Factory {
    enum ProductType {
        case ProductTypeCar
        case ProductTypeBicycle
        case ProductTypeBus
    }
    
    public static func createProductWithType(type: ProductType) -> Product? {
        switch type {
        case .ProductTypeCar:
            return  Car()
        case .ProductTypeBicycle:
            return Bicycle()
        case .ProductTypeBus:
            return Bus()
        }
    }
}

protocol Product {
    
}

class Car: Product {
    
}

class Bicycle: Product {
    
}

class Bus: Product {
    
}

// 使用简单工厂模式
class UseSampleFactory {
    let product = Factory.createProductWithType(type: .ProductTypeCar)
}
