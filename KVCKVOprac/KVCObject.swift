//
//  KVCObject.swift
//  KVCKVOprac
//
//  Created by Chun-Li Cheng on 2023/7/27.
//

import Foundation

class KVCObject: NSObject {
    // 真 KVC 宣告
    @objc dynamic var string: String!

    override init() {
        self.string = ""
        super.init()
    }

    
    // 偽 KVC 宣告
//    @objc static var string: String = ""

    
}

