//
//  Combine.swift
//  iOSDesignPatterns
//
//  Created by 杨飞宇 on 2017/1/10.
//  Copyright © 2017年 FY. All rights reserved.
//

import Foundation

// 抽象构件
protocol AbstractFile {
    func add(file: AbstractFile)
    func remove(file: AbstractFile)
    func getChild(index: Int) -> AbstractFile?
    func killVirus()
}

// 文件类，叶子构件
class ImageFile: AbstractFile {
    internal func killVirus() {
        print("杀毒...")
    }

    internal func getChild(index: Int) -> AbstractFile? {
        print("不支持的方法")
        return nil
    }

    internal func remove(file: AbstractFile) {
        print("不支持的方法")
    }

    internal func add(file: AbstractFile) {
        print("不支持的方法")
    }
}

// 文件夹类，容器构件
class Folder: AbstractFile {
    var fileList = [AbstractFile]()
    
    internal func killVirus() {
        for obj in fileList {
            obj.killVirus()
        }
    }
    
    internal func getChild(index: Int) -> AbstractFile? {
        return fileList[index]
    }
    
    internal func remove(file: AbstractFile) {
        fileList.remove(at: 0)
    }
    
    internal func add(file: AbstractFile) {
        fileList.append(file)
    }
}
